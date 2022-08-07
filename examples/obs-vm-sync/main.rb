# Connects to OBS using Websocket v5.
# Subscribes to scene change event.
# Changes Voicemeeter parameters when a scene change event happens.
# Selecting 'END' scene closes the connection.

require "voicemeeter"
require "obs/websocket"

class Main
  attr_reader :obs

  def initialize(vm)
    @vm = vm
    @driver = OBS::Connection.connect
    @obs = OBS::WS::Client.new(@driver)
  end

  def on_start
    @vm.strip[0].mute = true
    @vm.strip[1].B1 = true
    @vm.strip[2].B2 = true
  end

  def on_live
    @vm.strip[0].mute = false
    @vm.strip[7].A3 = true
    @vm.strip[7].fadeto(-6, 500)
    @vm.vban.instream[0].on = true
  end

  def on_brb
    @vm.strip[0].mute = false
    @vm.strip[5].A1 = true
    @vm.strip[5].A2 = true
    @vm.strip[7].fadeto(0, 500)
  end

  def on_end
    @vm.apply(
      {
        strip_0: {
          mute: true
        },
        strip_1: {
          mute: true,
          B1: false
        },
        strip_2: {
          mute: true,
          B1: false
        },
        vban_instream_0: {
          on: false
        }
      }
    )
  end

  def subscribe
    # subscribes to two events, open and current_program_scene_changed
    @obs.on_open do
      version = @obs.get_version.value!
      info = [
        "Successfully logged into OBS version: #{version.obs_version}",
        "Using OBS-websocket version: #{version.obs_web_socket_version}"
      ]
      puts info.join("\n")
    rescue => e
      $stderr.puts e.message
      exit! 1
    end

    @obs.on_current_program_scene_changed do |data|
      scene = data.scene_name
      puts "Switched to scene #{scene}"

      case scene
      when "START"
        on_start
      when "LIVE"
        on_live
      when "BRB"
        on_brb
      when "END"
        on_end
        @obs.close
      end
    end
  end
end

if $0 == __FILE__
  kind_id = "potato"

  # start Voicemeeter GUI
  Voicemeeter.start(kind_id)

  vm = Voicemeeter.remote(kind_id)

  vm.run do
    app = Main.new(vm)
    app.obs.run { app.subscribe }
  end
end
