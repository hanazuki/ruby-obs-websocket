#!/usr/bin/env ruby
# SPDX-License-Identifier: MIT

require 'obs/websocket'
require 'socket'
require 'uri'
require 'websocket/driver'

class Main
  def run(uri, password = nil)
    connect(URI.parse(uri))

    tracer = Tracer.new if ENV.key?('TRACE')

    # To initialize OBS::WebSocket, pass a WebSocket connection,
    # and optionally a tracer for debugging.
    obs = OBS::WebSocket::Client.new(@driver, tracer: tracer)

    # If the server requires authentication, set the password before starting communication.
    obs.password = password

    # Once the client is identified by the server, the handlers registered with `on_open` are called back.
    obs.on_open do
      # The request methods return Future values that can be waited for by `value!`.
      version = obs.get_version.value!
      puts "OBS version: #{version.obs_version}; OBS-websocket version: #{version.obs_web_socket_version}"

      # Pass request parameters using keyword arguments. Composite types are mapped to Hash objects.
      obs.broadcast_custom_event(
        event_data: {greeting: 'Hello, World!'}
      ).wait!
    rescue => e
      $stderr.puts e.message
      exit! 1
    end

    # Listen for events using `on_*` methods. The event payload is yielded to the block.
    obs.on_custom_event do |ev|
      puts ev.data['greeting']
      obs.close
    end

    # When the connection is closed by the server, the handlers registered to `on_close` are called back
    # with the error code and human-readable message.
    obs.on_close(executor: :immediate) do |code, reason|
      puts "Bye! (code: #{code}; reason: #{reason})"
      exit 1 if code != 1000
    end

    # Now start the websocket driver to begin the communication with the server.
    start_driver
  end

  private

  def connect(uri)
    fail ArgumentError, 'Only supports ws:// URI' unless uri.scheme == 'ws'

    @socket = TCPSocket.new(uri.host, uri.port || 80)
    @driver = WebSocket::Driver.client(SocketWrapper.new(uri, @socket))
  end

  def start_driver
    @driver.start

    loop do
      @driver.parse(@socket.readpartial(4096))
    rescue EOFError
      break
    end
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

  class Tracer
    def send_message(msg)
      $stderr.puts ">> #{msg}"
    end

    def receive_message(msg)
      $stderr.puts "<< #{msg}"
    end
  end
end

if $0 == __FILE__
  unless (1..2) === ARGV.size
    $stderr.puts "Usage: #{File.basename __FILE__} ws://HOST:PORT [PASSWORD]"
    exit 1
  end

  Main.new.run(*ARGV)
end
