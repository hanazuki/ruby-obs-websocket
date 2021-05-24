#!/usr/bin/env ruby
# SPDX-License-Identifier: MIT

require 'obs/websocket'
require 'socket'
require 'uri'
require 'websocket/driver'

class Main
  def run(uri, password)
    connect(URI.parse(uri))

    # To initialize OBS::WebSocket, pass a WebSocket connection.
    obs = OBS::WebSocket::Client.new(@driver)

    obs.on_open do
      obs.authenticate!(password).value!

      # Request methods return Future values that can be waited for by `value!`.
      version = obs.get_version.value!
      puts "OBS version: #{version.obs_studio_version}; OBS-websocket version: #{version.obs_websocket_version}"

      # Pass request parameters using keyword arguments. Composite types are mapped to Hash objects.
      obs.broadcast_custom_message(
        realm: 'helloworld',
        data: {greeting: 'Hello, World!'}
      ).wait!
    rescue => e
      $stderr.puts e.message
      exit! 1
    end

    # Listen for events using `on_*` methods. The event payload is yielded to the block.
    obs.on_broadcast_custom_message do |ev|
      puts ev.data['greeting']
      obs.close
    end

    obs.on_close(executor: :immediate) do |code, reason|
      puts "Bye! (code: #{code})"
    end

    start_driver
  end

  private

  def connect(uri)
    fail ArgumentError, 'Only supports ws:// URI' unless uri.scheme == 'ws'

    @socket = TCPSocket.new(uri.host, uri.port || 80)
    @driver = WebSocket::Driver.client(SocketWrapper.new(uri.to_s, @socket))
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
      @url = url
      @socket = socket
    end

    attr_reader :url

    def write(s)
      @socket.write(s)
    end
  end
end

if $0 == __FILE__
  if ARGV.size != 2
    $stderr.puts "Usage: #{File.basename __FILE__} ws://HOST:PORT PASSWORD"
    exit 1
  end

  Main.new.run(*ARGV)
end
