RSpec.describe OBS::WebSocket do
  it 'has a version number' do
    expect(OBS::WebSocket::VERSION).to be_a String
  end
end

RSpec.describe OBS::WebSocket::Client, :integration do

  subject { OBS::WebSocket::Client.new(websocket, executor: executor) }

  context 'When authentication succeeds' do
    example 'on_open callback is called' do
      expect do |cb|
        subject.password = websocket_password
        subject.on_open(&cb).then { subject.close }

        start_driver
      end.to yield_with_no_args
    end
  end

  context 'When authentication failed' do
    example 'on_open callback is not called' do
      expect do |cb|
        subject.password = "wrongpassword"
        subject.on_open(&cb)

        start_driver
      end.not_to yield_control
    end

    example 'on_close callback is called with error' do
      expect do |cb|
        subject.password = "wrongpassword"
        subject.on_close(executor: :immediate, &cb)

        start_driver
      end.to yield_with_args([4009, String])
    end
  end

  context 'When a custom event is fired' do
    example 'on_custom_event callback is called' do
      expect do |cb|
        subject.password = websocket_password
        subject.on_open do
          subject.broadcast_custom_event(event_data: {greeting: "Hi"}).value!
        end

        subject.on_custom_event(&cb)
        subject.on_custom_event { subject.close }

        start_driver
      end.to yield_with_args(OBS::WebSocket::Protocol::Events::CustomEvent)
    end
  end

  context 'On request errors' do
    specify 'Future is rejected' do
      subject.password = websocket_password
      subject.on_open do
        ret = subject.broadcast_custom_event(event_data: {})  # empty data is not accepted
        expect { ret.value! }.to raise_error {|err|
          aggregate_failures do
            expect(err).to be_an OBS::WebSocket::RequestError
            expect(err.code).to be OBS::WebSocket::Protocol::Enums::RequestStatus::RequestFieldEmpty
            expect(err.comment).to be_a String
          end
        }
      ensure
        subject.close
      end

      start_driver
    end
  end

  example '#get_obs_version' do
    subject.password = websocket_password
    subject.on_open do
      ret = subject.get_version.value!
      aggregate_failures do
        expect(ret.obs_version).to be_a String
        expect(ret.rpc_version).to be_an Integer
        expect(ret.available_requests).to be_an(Array).and all be_a String
      end
    ensure
      subject.close
    end

    start_driver
  end

  example '#get_monitor_list' do
    subject.password = websocket_password
    subject.on_open do
      ret = subject.get_monitor_list.value!
      aggregate_failures do
        expect(ret.monitors).to be_an(Array).and all matching({
          "monitorHeight" => an_instance_of(Integer),
          "monitorWidth" => an_instance_of(Integer),
          "monitorIndex" => an_instance_of(Integer),
          "monitorName" => an_instance_of(String),
          "monitorPositionX" => an_instance_of(Integer),
          "monitorPositionY" => an_instance_of(Integer),
        })
      end
    ensure
      subject.close
    end

    start_driver
  end
end
