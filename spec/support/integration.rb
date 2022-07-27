require 'socket'
require 'timeout'
require 'tmpdir'
require 'uri'
require 'websocket/driver'

RSpec.shared_context 'With running OBS' do
  let(:websocket_port) do
    s = TCPServer.new('localhost', 0)
    s.addr[1]
  ensure
    s.close
  end

  let(:websocket_password) { 'supersecretpassword' }

  around do |example|
    skip 'DISPLAY not available' unless ENV.key?('DISPLAY')

    home = Pathname(Dir.mktmpdir)
    home.join('obs-studio').tap(&:mkpath).join('logs')
      .make_symlink(Pathname.getwd.join('tmp/config/obs-studio/logs').tap(&:mkpath))

    @pid = spawn(
      {
        'XDG_CONFIG_HOME' => home.to_s
      },
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
