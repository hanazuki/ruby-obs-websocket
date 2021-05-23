#!/usr/bin/env ruby

ENV['BUNDLE_GEMFILE'] = File.join(__dir__, 'Gemfile')
require 'bundler/setup'

require 'obs/websocket'
require 'socket'
require 'uri'
require 'websocket/driver'

class Main
  def run(uri, password)
    connect(URI.parse(uri))

    obs = OBS::WebSocket::Client.new(@driver)

    obs.on_open do
      obs.authenticate!(password).value!

      version = obs.get_version.value!
      puts "OBS version: #{version.obs_studio_version}; OBS-websocket version: #{version.obs_websocket_version}"

      obs.broadcast_custom_message(
        realm: 'helloworld',
        data: {greeting: 'Hello, World!'}
      ).wait!
    rescue => e
      $stderr.puts e.message
      obs.close
    end

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
