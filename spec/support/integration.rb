require 'fileutils'
require 'pathname'
require 'socket'
require 'timeout'
require 'tmpdir'
require 'uri'
require 'websocket/driver'

RSpec.shared_context 'With running OBS', :concurrency do
  let(:websocket_port) do
    s = TCPServer.new('localhost', 0)
    s.addr[1]
  ensure
    s.close
  end

  let(:websocket_password) { 'supersecretpassword' }

  around do |example|
    skip 'DISPLAY not available' unless ENV.key?('DISPLAY')

    home = Pathname(Dir.mktmpdir(nil, Pathname.getwd.join('tmp').tap(&:mkpath)))
    FileUtils.cp_r(Pathname(__dir__).join('../config/obs-studio'), home)

    env = {
      'XDG_CONFIG_HOME' => home.to_s
    }

    @pid = spawn(
      *(ENV.key?('USE_FLATPAK_OBS_STUDIO') ?
        %w[flatpak run --command=env com.obsproject.Studio] :
        %w[env]),
      *env.map {|k, v| "#{k}=#{v}" },
      'obs', '-m',
      "--websocket_port=#{websocket_port}",
      "--websocket_password=#{websocket_password}",
      '--websocket_debug',
      out: File::NULL, err: File::NULL
    )
    example.run
  ensure
    begin
      Process.kill(:TERM, @pid)
      Process.detach(@pid)
    rescue Errno::ECHILD
      # noop
    end if @pid
  end

  let(:websocket) do
    cnt = 0
    begin
      @socket = TCPSocket.new('localhost', websocket_port)
    rescue Errno::ECONNREFUSED
      sleep 0.1
      cnt += 1
      retry if cnt < 20
      raise
    end

    @driver = WebSocket::Driver.client(SocketWrapper.new("ws://localhost:#{websocket_port}", @socket))
  end

  def start_driver
    @driver.start

    Timeout.timeout(5) do
      loop do
        @driver.parse(@socket.readpartial(4096))
      rescue EOFError
        break
      end
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
end
