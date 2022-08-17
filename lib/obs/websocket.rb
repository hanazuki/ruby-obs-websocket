# SPDX-License-Identifier: MIT

require 'concurrent'
require 'digest/sha2'
require 'json'
require 'securerandom'
require 'socket'
require 'websocket/driver'

require_relative 'websocket/version'

module OBS
  module WebSocket
    class Error < StandardError; end

    class RequestError < Error
      def initialize(code:, comment:)
        @code = code
        @comment = comment
        super("#{comment} (code: #{code})")
      end

      attr_reader :code, :comment
    end

    class ConversionError < Error
      def initialize(message, value:)
        @value = value
        super("#{message}: #{value.inspect}")
      end

      attr_reader :value
    end

    class Connection
      attr_reader :socket, :driver, :password

      def initialize(uri: nil, password: nil)
          fail ArgumentError, 'Only supports ws:// URI' unless uri.scheme == 'ws'
          @password = password
          @socket = TCPSocket.new(uri.host, uri.port || 4455)
          @driver = ::WebSocket::Driver.client(SocketWrapper.new(uri, @socket))
      end

      class SocketWrapper
        def initialize(url, socket)
          @url = url.to_s
          @socket = socket
        end

        attr_reader :url

        def write(s)
          @socket.write(s)
        end
      end
    end

    # Shortcut for {OBS::WebSocket::Client#initialize}
    #
    # @see OBS::WebSocket::Client#initialize
    def self.new(*args, **kwargs)
      Client.new(*args, **kwargs)
    end

    # OBS-websocket client.
    class Client
      RPC_VERSIONS = [1]

      # Creates an OBS-websocket client.
      #
      # <tt>websocket</tt> object must respond to the following methods:
      # - <tt>text(str)</tt>: send a text frame
      # - <tt>on(event, &block)</tt>: add an event handler
      # - <tt>close()</tt>: close the connection
      #
      # @param websocket [Object] the websocket object
      # @param executor the default executor on which the callbacks are invoked
      # @param tracer the object that traces sent and received messages
      def initialize(websocket, executor: :io, tracer: nil)
        @websocket = websocket
        @response_dispatcher = ResponseDispatcher.new
        @event_dispatcher = EventDispatcher.new
        @executor = executor
        @tracer = tracer
        @on_open = Concurrent::Promises.resolvable_event
        @on_close = Concurrent::Promises.resolvable_future

        @state = :pending_hello  # -> :pending_identified -> :identified

        websocket.on(:close) do |event|
          @on_close.resolve(true, [event.code, event.reason])
        end

        websocket.on(:message) do |event|
          data = event.data
          @tracer&.receive_message(data)
          handle_message(JSON.parse(data))
        end

        websocket.on(:error) do |event|
          $stderr.puts "Error: #{event.code} #{event.reason}"
        end
      end

      # Sets the password for authentication.
      # @param [String, Proc] value the password string or a proc that returns it
      attr_writer :password

      # Subscribes for events.
      # @!attribute [w] subscriptions
      # @param [Integer] value bitset of event categories to subscribe
      # @see Protocol::Enums::EventSubscription
      def subscriptions=(value)
        @subscriptions = value

        if @state == :pending_identified || @state == :identified
          reidentify
        end
      end

      # Gets the RPC version negotiated with the server.
      # @return [Integer, nil] The version number, or nil when the client is not yet identified.
      attr_reader :negotiated_rpc_version

      # Adds an event handler for connection establishment.
      #
      # @param executor the executor on which the callback is invoked
      # @yield Called when obs-websocket connection is established.
      # @return [Future]
      def on_open(executor: default_executor, &listener)
        if listener
          @on_open.chain_on(executor, &listener)
        else
          @on_open.with_default_executor(executor)
        end
      end

      # Adds an event handler for connection termination.
      #
      # @param executor the executor on which the callback is invoked
      # @yield Called when obs-websocket connection is terminated.
      # @return [Future]
      def on_close(executor: default_executor, &listener)
        if listener
          @on_close.then_on(executor, &listener)
        else
          @on_close.with_default_executor(executor)
        end
      end

      # Adds an event handler for obs-websocket event.
      #
      # @param type [String] type of obs-websocket event to listen for
      # @param executor the executor on which the callback is invoked
      # @yield Called when the specified type of obs-websocket event is received.
      # @yieldparam event [Event] the event object
      # @return [void]
      def on(type, executor: default_executor, &listener)
        @event_dispatcher.register(executor, type, listener)
        nil
      end

      # Adds an event handler for <tt>CustomEvent</tt> event.
      #
      # @param executor the executor on which the callback is invoked
      # @yieldparam event [Events::CustomEvent] the event object
      # @return [void]
      def on_custom_event(executor: default_executor, &listener)
        on("CustomEvent", executor: executor, &listener)
      end

      # Close the connection.
      #
      # @return [void]
      def close
        @websocket.close
      end

      def default_executor
        @executor
      end

      private

      def identify(msg)
        if auth_params = msg['authentication']
          if password = @password.respond_to?(:call) ? @password.call : @password
            salt = auth_params['salt']
            challenge = auth_params['challenge']

            token = auth_token(password: password, salt: salt, challenge: challenge)
          end
        end

        send_message(Protocol::Messages::IdentifyMessage.new({
          'rpcVersion' => RPC_VERSIONS.max,
          'authentication' => token,
          'eventSubscriptions' => @subscriptions,
        }.compact))
      end

      def reidentify
        send_message(Protocol::Messages::ReidentifyMessage.new({
          'eventSubscriptions' => @subscriptions,
        }.compact))
      end

      def auth_token(password:, salt:, challenge:)
        Digest::SHA256.base64digest(Digest::SHA256.base64digest(password + salt) + challenge)
      end

      def send_message(msg)
        data = msg.to_json
        @tracer&.send_message(data)
        @websocket.text(data)
      end

      def send_request(request)
        req_id, future = @response_dispatcher.register(default_executor, request)
        send_message(Protocol::Messages::RequestMessage.new({
          'requestType' => request.type,
          'requestId' => req_id,
          'requestData' => request.as_json,
        }))
        future
      end

      def handle_message(payload)
        msg = Protocol::ServerMessage.create(payload)

        case @state
        when :pending_hello
          fail "Pending Hello, but received #{msg}" unless Protocol::Messages::HelloMessage === msg
        when :pending_identified
          fail "Pending Identified, but received #{msg}" unless Protocol::Messages::IdentifiedMessage === msg
          fail "Duplicate Hello received #{msg}" if Protocol::Messages::HelloMessage === msg
        when :identified
          fail "Duplicate Hello received #{msg}" if Protocol::Messages::HelloMessage === msg
        else
          fail 'BUG'
        end

        case msg
        when Protocol::Messages::HelloMessage
          identify(msg)
          @state = :pending_identified
        when Protocol::Messages::IdentifiedMessage
          @negotiated_rpc_version = msg['negotiatedRpcVersion']
          fail "RPC version not supported (#{@negotiated_rpc_version})" unless RPC_VERSIONS.include?(@negotiated_rpc_version)
          @state = :identified
          @on_open.resolve
        when Protocol::Messages::EventMessage
          @event_dispatcher.dispatch(msg)
        when Protocol::Messages::RequestResponseMessage
          @response_dispatcher.dispatch(msg)
        when Protocol::Messages::RequestBatchResponseMessage
          fail 'TODO'
        else
          fail 'BUG'
        end
      end

      class EventDispatcher
        def initialize
          @listeners = Hash.new {|h, k| h[k] = []}
        end

        def register(executor, type, listener)
          @listeners[type].push([executor, listener])
        end

        def dispatch(msg)
          type = msg['eventType']
          data = msg['eventData']
          event = Protocol::Event.create(type, data).freeze
          @listeners[type].each do |(executor, listener)|
            Concurrent::Promises.future_on(executor, event, &listener).run
          end
        end
      end

      class ResponseDispatcher
        def initialize
          @ongoing_requests = {}
        end

        def register(executor, request)
          request_id = new_request_id
          future = Concurrent::Promises.resolvable_future_on(executor)

          @ongoing_requests[request_id] = {
            request: request,
            future: future,
          }

          [request_id, future.with_hidden_resolvable]
        end

        def dispatch(msg)
          req_id = msg['requestId']

          if h = @ongoing_requests.delete(req_id)
            request = h[:request]
            future = h[:future]

            return if request.type != msg['requestType']

            status = msg['requestStatus']
            if status['result']
              response_class = request.class.const_get(:Response)
              future.fulfill(response_class.new(msg['responseData']))
            else
              future.reject(RequestError.new(code: status['code'], comment: status['comment']))
            end
          end
        end

        private

        def new_request_id
          SecureRandom.uuid
        end
      end
    end

    module Protocol
      class TypeConverter
        def initialize(**kwargs, &block)
          kwargs.each do |k, v|
            instance_variable_set(:"@#{k}", v)
          end
          instance_eval(&block)
        end

        attr_reader :name

        def to_s
          name
        end
      end

      module TypeConverters
        Any = TypeConverter.new(name: 'Any') do
          def as_ruby(v)
            raise ConversionError.new("nil is not allowed", value: v) if v.nil?
            v
          end

          def as_json(v)
            raise ConversionError.new("nil is not allowed", value: v) if v.nil?
            v
          end
        end

        Boolean = TypeConverter.new(name: 'Boolean') do
          def as_ruby(b)
            raise ConversionError.new("Boolean value is expected", value: b) unless true == b || false == b
            b
          end

          def as_json(b)
            raise ConversionError.new("nil is not allowed", value: b) if b.nil?
            !!b
          end
        end

        Number = TypeConverter.new(name: 'Number') do
          def as_ruby(f)
            raise ConversionError.new("Integer or Float value is expected", value: f) unless Integer === f || Float === f
            f
          end

          def as_json(f)
            raise ConversionError.new("nil is not allowed", value: f)
            f.kind_of?(Integer) ? f : Float(f)
          end
        end

        String = TypeConverter.new(name: 'String') do
          def as_ruby(s)
            raise ConversionError.new("String value is expected", value: s) unless ::String === s
            s.to_s
          end

          def as_json(s)
            raise ConversionError.new("nil is not allowed", value: s) if s.nil?
            s.to_s
          end
        end

        Optional = Class.new do
          def [](element_type)
            TypeConverter.new(name: "Optional[#{element_type.name}]", element_type: element_type) do
              def as_ruby(v)
                return if v.nil?
                @element_type.as_ruby(v)
              end

              def as_json(v)
                return if v.nil?
                @element_type.as_json(v)
              end
            end
          end
        end.new

        Array = Class.new do
          def [](element_type)
            TypeConverter.new(name: "Array[#{element_type.name}]", element_type: element_type) do
              def as_ruby(a)
                raise ConversionError.new("Array value is expected", value: a) unless ::Array === a
                a.map {|v| @element_type.as_ruby(v) }
              end

              def as_json(a)
                raise ConversionError.new("nil is not allowed", value: a) if a.nil?
                a.to_a.map {|v| @element_type.as_json(v) }
              end
            end
          end
        end.new

        Object = TypeConverter.new(name: 'Object') do
          def as_ruby(o)
            raise ConversionError.new("Hash value is expected", value: a) unless Hash === o
            o.to_h
          end

          def as_json(o)
            raise ConversionError.new("nil is not allowed", value: o) if o.nil?
            o.to_h
          end

          def [](fields)
            TypeConverter.new(name: "Object[#{fields.keys.map(&:to_s).join(', ')}]", fields: fields) do
              def as_ruby(o)
                raise ConversionError.new("Hash value is expected", value: a) unless Hash === o
                @fields.to_h do |name, field|
                  wire_name = field[:wire_name]
                  type = field[:type]
                  [name, type.as_ruby(o[wire_name])]
                end
              end

              def as_json(o)
                raise ConversionError.new("nil is not allowed", value: o) if o.nil?
                @fields.to_h do |name, field|
                  wire_name = field[:wire_name]
                  type = field[:type]
                  [wire_name, type.as_json(o[name])]
                end
              end
            end
          end
        end
      end

      class Event
        CLASSES_BY_TYPE = {}
        private_constant :CLASSES_BY_TYPE

        def self.create(type, data)
          if cls = CLASSES_BY_TYPE[type]
            cls.new(data)
          else
            Events::UnknownEvent.new(type, data)
          end
        end

        def initialize(json)
          @json = json
        end

        def type
          self.class.const_get(:TYPE)
        end

        private def get_field(name, type)
                  type.as_ruby(@json[name])
                end

        def as_json(*)
          @json
        end
      end

      module Events
        # An event unknown to the client library.
        class UnknownEvent < Event
          def initialize(type, data)
            @type = type
            @data = data
          end

          attr_reader :type, :data
        end

        # Custom event fired by a {Mixins::Request#broadcast_custom_event} request.
        class CustomEvent < Event
          TYPE = -"CustomEvent"
          CLASSES_BY_TYPE[TYPE] = self

          def data
            @json
          end
        end
      end

      class Request
        def initialize(json)
          @json = json
        end

        def type
          self.class.const_get(:TYPE)
        end

        def as_json(*)
          @json
        end
      end

      class Response
        def initialize(json)
          @json = json
        end

        def as_json(*)
          @json
        end

        private def get_field(name, type)
                  type.as_ruby(@json[name])
                end
      end

      require_relative 'websocket/protocol'

      class Message
        def initialize(json = {})
          @json = json
        end

        def [](key)
          @json[key]
        end

        def as_json(*)
          {
            op: opcode,
            d: @json,
          }
        end

        def to_json(*args)
          as_json(*args).to_json
        end

        def opcode
          self.class.const_get(:OPCODE)
        end
      end

      class ServerMessage < Message
        def self.create(json)
          op = json.fetch('op')
          cls = CLASSES_BY_OPCODE[op] or fail "Unknown message type (op=#{op.inspect})"
          cls.new(json.fetch('d'))
        end
      end

      class ClientMessage < Message
      end

      module Messages
        class HelloMessage < ServerMessage
          OPCODE = Enums::WebSocketOpCode::Hello
        end

        class IdentifyMessage < ClientMessage
          OPCODE = Enums::WebSocketOpCode::Identify
        end

        class IdentifiedMessage < ServerMessage
          OPCODE = Enums::WebSocketOpCode::Identified
        end

        class ReidentifyMessage < ClientMessage
          OPCODE = Enums::WebSocketOpCode::Reidentify
        end

        class EventMessage < ServerMessage
          OPCODE = Enums::WebSocketOpCode::Event
        end

        class RequestMessage < ClientMessage
          OPCODE = Enums::WebSocketOpCode::Request
        end

        class RequestResponseMessage < ServerMessage
          OPCODE = Enums::WebSocketOpCode::RequestResponse
        end

        class RequestBatchMessage < ClientMessage
          OPCODE = Enums::WebSocketOpCode::RequestBatch
        end

        class RequestBatchResponseMessage < ServerMessage
          OPCODE = Enums::WebSocketOpCode::RequestBatchResponse
        end
      end

      ServerMessage::CLASSES_BY_OPCODE = [
        Messages::HelloMessage,
        Messages::IdentifiedMessage,
        Messages::EventMessage,
        Messages::RequestResponseMessage,
        Messages::RequestBatchResponseMessage,
      ].to_h {|cls| [cls.const_get(:OPCODE), cls] }.freeze

      Client.include Mixins::Event, Mixins::Request
    end
  end
end
