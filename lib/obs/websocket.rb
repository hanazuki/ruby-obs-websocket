require 'concurrent'
require 'digest/sha2'
require 'json'
require 'securerandom'

require_relative 'websocket/version'

module OBS
  module WebSocket
    class Error < StandardError; end

    class RequestError < Error; end

    # Shortcut for {OBS::WebSocket::Client#initialize}
    #
    # @see OBS::WebSocket::Client#initialize
    def self.new(*args, **kwargs)
      Client.new(*args, **kwargs)
    end

    # OBS-websocket client.
    class Client
      # Creates an OBS-websocket client.
      #
      # <tt>websocket</tt> object must respond to the following methods:
      # - <tt>text(str)</tt>: send a text frame
      # - <tt>on(event, &block)</tt>: add an event handler
      # - <tt>close()</tt>: close the connection
      #
      # @param websocket [Object] the websocket object
      # @param executor the executor on which the callbacks are invoked
      def initialize(websocket, executor: :io)
        @websocket = websocket
        @response_dispatcher = ResponseDispatcher.new
        @event_dispatcher = EventDispatcher.new
        @executor = executor
        @on_open = Concurrent::Promises.resolvable_event
        @on_close = Concurrent::Promises.resolvable_future

        websocket.on(:open) do
          @on_open.resolve
        end

        websocket.on(:close) do |event|
          @on_close.resolve(true, [event.code, event.reason])
        end

        websocket.on(:message) do |event|
          handle_message(JSON.parse(event.data))
        end

        websocket.on(:error) do |event|
          $stderr.puts "Error: #{event.code} #{event.reason}"
        end
      end

      # Authenticates the client to the server using the password.
      #
      # @param password [String] the password
      # @return [Future<:ok>]
      def authenticate!(password)
        get_auth_required.then do |h|
          if h.auth_required
            token = auth_token(
              password: password,
              salt: h.salt,
              challenge: h.challenge,
            )
            authenticate(auth: token).then { :ok }
          else
            :ok
          end
        end.flat
      end

      # Adds an event handler for connection establishment.
      #
      # @param executor the executor on which the callback is invoked
      # @yield Called when obs-websocket connection is established.
      # @return [void]
      def on_open(executor: @executor, &listener)
        @on_open.chain_on(executor, &listener)
        nil
      end

      # Adds an event handler for connection termination.
      #
      # @param executor the executor on which the callback is invoked
      # @yield Called when obs-websocket connection is terminated.
      # @return [void]
      def on_close(executor: @executor, &listener)
        @on_close.then_on(executor, &listener)
        nil
      end

      # Adds an event handler for obs-websocket event.
      #
      # @param type [String] type of obs-websocket event to listen for
      # @param executor the executor on which the callback is invoked
      # @yield Called when the specified type of obs-websocket event is received.
      # @yieldparam event [Event] the event object
      # @return [void]
      def on(type, executor: @executor, &listener)
        @event_dispatcher.register(executor, type, listener)
        nil
      end

      # Close the connection.
      #
      # @return [void]
      def close
        @websocket.close
      end

      private

      def auth_token(password:, salt:, challenge:)
        Digest::SHA256.base64digest(Digest::SHA256.base64digest(password + salt) + challenge)
      end

      def send_request(request)
        message_id, future = @response_dispatcher.register(@executor, request)
        @websocket.text(JSON.dump({**request.to_h, 'message-id' => message_id}))
        future
      end

      def handle_message(payload)
        if message_id = payload['message-id']
          @response_dispatcher.dispatch(message_id, payload)
        elsif update_type = payload['update-type']
          @event_dispatcher.dispatch(update_type, payload)
        else
          fail 'Unknown message'
        end
     end
    end

    class EventDispatcher
      def initialize
        @listeners = Hash.new {|h, k| h[k] = []}
      end

      def register(executor, type, listener)
        @listeners[type].push([executor, listener])
      end

      def dispatch(update_type, payload)
        event = Protocol::Event.create(update_type, payload).freeze
        @listeners[update_type].each do |(executor, listener)|
          Concurrent::Promises.future_on(executor, event, &listener).run
        end
      end
    end

    class ResponseDispatcher
      def initialize
        @ongoing_requests = {}
      end

      def register(executor, request)
        message_id = new_message_id
        future = Concurrent::Promises.resolvable_future_on(executor)

        @ongoing_requests[message_id] = {
          request: request,
          future: future,
        }

        [message_id, future.with_hidden_resolvable]
      end

      def dispatch(message_id, payload)
        if h = @ongoing_requests.delete(message_id)
          request = h[:request]
          future = h[:future]

          case payload['status']
          when 'ok'
            response_class = request.class.const_get(:Response)
            future.fulfill(response_class.new(payload))
          when 'error'
            future.reject(RequestError.new(payload['error']))
          else
            fail 'Unknown status'
          end
        end
      end

      private

      def new_message_id
        SecureRandom.uuid
      end
    end

    module Protocol
      class Type
        def initialize(**kwargs, &block)
          kwargs.each do |k, v|
            instance_variable_set(:"@#{k}", v)
          end
          instance_eval(&block)
        end

        attr_reader :name
      end

      module Types
        Boolean = Type.new(name: 'Boolean') do
          def as_ruby(b)
            !!b
          end

          def as_json(b)
            !!b
          end
        end

        Integer = Type.new(name: 'Int') do
          def as_ruby(i)
            i.to_i
          end

          def as_json(i)
            i.to_i
          end
        end

        Float = Type.new(name: 'Double') do
          def as_ruby(f)
            f.to_f
          end

          def as_json(f)
            f.to_f
          end
        end
        Numeric = Float

        String = Type.new(name: 'String') do
          def as_ruby(s)
            s.to_s
          end

          def as_json(s)
            s.to_s
          end
        end

        Optional = Class.new do
          def [](element_type)
            Type.new(name: "Optional[#{element_type.name}]", element_type: element_type) do
              def as_ruby(v)
                return unless v
                @element_type.as_ruby(v)
              end

              def as_json(v)
                return unless v
                @element_type.as_json(v)
              end
            end
          end
        end.new

        Array = Class.new do
          def [](element_type)
            Type.new(name: "Array[#{element_type.name}]", element_type: element_type) do
              def as_ruby(a)
                a.to_a.map {|v| @element_type.as_ruby(v) }
              end

              def as_json(a)
                a.to_a.map {|v| @element_type.as_json(v) }
              end
            end
          end
        end.new

        Object = Type.new(name: 'Object') do
          def as_ruby(o)
            o.to_h
          end

          def as_json(o)
            o.to_h
          end

          def [](fields)
            Type.new(name: "Object[#{fields.keys.map(&:to_s).join(', ')}]", fields: fields) do
              def as_ruby(o)
                @fields.to_h do |name, field|
                  json_name = field[:json_name]
                  type = field[:type]
                  [name, type.as_ruby(o[json_name])]
                end
              end

              def as_json(a)
                @fields.to_h do |name, field|
                  json_name = field[:json_name]
                  type = field[:type]
                  [json_name, type.as_ruby(o[name])]
                end
              end
            end
          end
        end

        StringOrObject = Type.new(name: 'Object') do
          def as_ruby(o)
            String === o ? o : o.to_h
          end

          def as_json(o)
            o.respond_to?(:to_str) ? o.to_str : o.to_h
          end

          def [](fields)
            Type.new(name: "Object[#{fields.keys.map(&:to_s).join(', ')}]", fields: fields) do
              def as_ruby(o)
                return o if String === o

                @fields.to_h do |name, field|
                  json_name = field[:json_name]
                  type = field[:type]
                  [name, type.as_ruby(o[json_name])]
                end
              end

              def as_json(a)
                return o.to_str if o.respond_to?(:to_str)

                @fields.to_h do |name, field|
                  json_name = field[:json_name]
                  type = field[:type]
                  [json_name, type.as_ruby(o[name])]
                end
              end
            end
          end
        end
      end

      class ServerMessage
      end

      class ClientMessage
      end

      class Event < ServerMessage
        CLASSES_BY_JSON_NAME = {}
        private_constant :CLASSES_BY_JSON_NAME

        def self.json_name(json_name)
          CLASSES_BY_JSON_NAME[json_name] = self
        end

        def self.create(type, payload)
          cls = CLASSES_BY_JSON_NAME[type] || UnknownEvent
          cls.new(payload)
        end

        def initialize(json)
          @json = json
        end

        private def get_field(name, type)
          type.as_ruby(@json[name])
        end

        def to_h
          @json
        end

        def update_type
          get_field('update-type', Types::String)
        end
        def stream_timecode;
          get_field('stream-timecode', Types::Optional[Types::String])
        end
        def rec_timecode
          get_field('rec-timecode', Types::Optional[Types::String])
        end
      end

      class UnknownEvent < Event
      end

      class Request < ClientMessage
        class << self
          def json_name(json_name)
            @json_name = json_name
          end

          def params(params = {})
            (@params ||= {}).update(params)
          end
        end

        def initialize(args)
          @json = self.class.instance_variable_get(:@params).to_h do |name, v|
            type = v[:type]
            json_name = v[:json_name]
            [json_name, type.as_json(args[name])]
          end
          @json['request-type'] = self.class.instance_variable_get(:@json_name)
        end

        def to_h
          @json
        end
      end

      class Response < ServerMessage
        def initialize(json)
          @json = json
        end

        def to_h
          @json
        end

        private def get_field(name, type)
          type.as_ruby(@json[name])
        end
      end
    end

    require_relative 'websocket/protocol'

    Client.include Protocol::Event::Mixin
    Client.include Protocol::Request::Mixin
  end
end
