# frozen_string_literal: false

module OBS::WS::Protocol
  module Responses
    # A response to <tt>GetPersistentData</tt> request.
    # @see Mixins::Request#get_persistent_data
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getpersistentdata
    class GetPersistentData < Response
      # @!attribute [r] slot_value
      # @return [Object] <tt>slotValue</tt> field
      def slot_value
        get_field("slotValue", TypeConverters::Any)
      end
      Requests::GetPersistentData::Response = Responses::GetPersistentData
    end
    # A response to <tt>SetPersistentData</tt> request.
    # @see Mixins::Request#set_persistent_data
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setpersistentdata
    class SetPersistentData < Response
      Requests::SetPersistentData::Response = Responses::SetPersistentData
    end
    # A response to <tt>GetSceneCollectionList</tt> request.
    # @see Mixins::Request#get_scene_collection_list
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getscenecollectionlist
    class GetSceneCollectionList < Response
      # @!attribute [r] current_scene_collection_name
      # @return [String] <tt>currentSceneCollectionName</tt> field
      def current_scene_collection_name
        get_field("currentSceneCollectionName", TypeConverters::String)
      end
      # @!attribute [r] scene_collections
      # @return [Array<String>] <tt>sceneCollections</tt> field
      def scene_collections
        get_field(
          "sceneCollections",
          TypeConverters::Array[TypeConverters::String]
        )
      end
      Requests::GetSceneCollectionList::Response =
        Responses::GetSceneCollectionList
    end
    # A response to <tt>SetCurrentSceneCollection</tt> request.
    # @see Mixins::Request#set_current_scene_collection
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setcurrentscenecollection
    class SetCurrentSceneCollection < Response
      Requests::SetCurrentSceneCollection::Response =
        Responses::SetCurrentSceneCollection
    end
    # A response to <tt>CreateSceneCollection</tt> request.
    # @see Mixins::Request#create_scene_collection
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#createscenecollection
    class CreateSceneCollection < Response
      Requests::CreateSceneCollection::Response =
        Responses::CreateSceneCollection
    end
    # A response to <tt>GetProfileList</tt> request.
    # @see Mixins::Request#get_profile_list
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getprofilelist
    class GetProfileList < Response
      # @!attribute [r] current_profile_name
      # @return [String] <tt>currentProfileName</tt> field
      def current_profile_name
        get_field("currentProfileName", TypeConverters::String)
      end
      # @!attribute [r] profiles
      # @return [Array<String>] <tt>profiles</tt> field
      def profiles
        get_field("profiles", TypeConverters::Array[TypeConverters::String])
      end
      Requests::GetProfileList::Response = Responses::GetProfileList
    end
    # A response to <tt>SetCurrentProfile</tt> request.
    # @see Mixins::Request#set_current_profile
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setcurrentprofile
    class SetCurrentProfile < Response
      Requests::SetCurrentProfile::Response = Responses::SetCurrentProfile
    end
    # A response to <tt>CreateProfile</tt> request.
    # @see Mixins::Request#create_profile
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#createprofile
    class CreateProfile < Response
      Requests::CreateProfile::Response = Responses::CreateProfile
    end
    # A response to <tt>RemoveProfile</tt> request.
    # @see Mixins::Request#remove_profile
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#removeprofile
    class RemoveProfile < Response
      Requests::RemoveProfile::Response = Responses::RemoveProfile
    end
    # A response to <tt>GetProfileParameter</tt> request.
    # @see Mixins::Request#get_profile_parameter
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getprofileparameter
    class GetProfileParameter < Response
      # @!attribute [r] parameter_value
      # @return [String] <tt>parameterValue</tt> field
      def parameter_value
        get_field("parameterValue", TypeConverters::String)
      end
      # @!attribute [r] default_parameter_value
      # @return [String] <tt>defaultParameterValue</tt> field
      def default_parameter_value
        get_field("defaultParameterValue", TypeConverters::String)
      end
      Requests::GetProfileParameter::Response = Responses::GetProfileParameter
    end
    # A response to <tt>SetProfileParameter</tt> request.
    # @see Mixins::Request#set_profile_parameter
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setprofileparameter
    class SetProfileParameter < Response
      Requests::SetProfileParameter::Response = Responses::SetProfileParameter
    end
    # A response to <tt>GetVideoSettings</tt> request.
    # @see Mixins::Request#get_video_settings
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getvideosettings
    class GetVideoSettings < Response
      # @!attribute [r] fps_numerator
      # @return [Numeric] <tt>fpsNumerator</tt> field
      def fps_numerator
        get_field("fpsNumerator", TypeConverters::Number)
      end
      # @!attribute [r] fps_denominator
      # @return [Numeric] <tt>fpsDenominator</tt> field
      def fps_denominator
        get_field("fpsDenominator", TypeConverters::Number)
      end
      # @!attribute [r] base_width
      # @return [Numeric] <tt>baseWidth</tt> field
      def base_width
        get_field("baseWidth", TypeConverters::Number)
      end
      # @!attribute [r] base_height
      # @return [Numeric] <tt>baseHeight</tt> field
      def base_height
        get_field("baseHeight", TypeConverters::Number)
      end
      # @!attribute [r] output_width
      # @return [Numeric] <tt>outputWidth</tt> field
      def output_width
        get_field("outputWidth", TypeConverters::Number)
      end
      # @!attribute [r] output_height
      # @return [Numeric] <tt>outputHeight</tt> field
      def output_height
        get_field("outputHeight", TypeConverters::Number)
      end
      Requests::GetVideoSettings::Response = Responses::GetVideoSettings
    end
    # A response to <tt>SetVideoSettings</tt> request.
    # @see Mixins::Request#set_video_settings
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setvideosettings
    class SetVideoSettings < Response
      Requests::SetVideoSettings::Response = Responses::SetVideoSettings
    end
    # A response to <tt>GetStreamServiceSettings</tt> request.
    # @see Mixins::Request#get_stream_service_settings
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getstreamservicesettings
    class GetStreamServiceSettings < Response
      # @!attribute [r] stream_service_type
      # @return [String] <tt>streamServiceType</tt> field
      def stream_service_type
        get_field("streamServiceType", TypeConverters::String)
      end
      # @!attribute [r] stream_service_settings
      # @return [Hash] <tt>streamServiceSettings</tt> field
      def stream_service_settings
        get_field("streamServiceSettings", TypeConverters::Object)
      end
      Requests::GetStreamServiceSettings::Response =
        Responses::GetStreamServiceSettings
    end
    # A response to <tt>SetStreamServiceSettings</tt> request.
    # @see Mixins::Request#set_stream_service_settings
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setstreamservicesettings
    class SetStreamServiceSettings < Response
      Requests::SetStreamServiceSettings::Response =
        Responses::SetStreamServiceSettings
    end
    # A response to <tt>GetRecordDirectory</tt> request.
    # @see Mixins::Request#get_record_directory
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getrecorddirectory
    class GetRecordDirectory < Response
      # @!attribute [r] record_directory
      # @return [String] <tt>recordDirectory</tt> field
      def record_directory
        get_field("recordDirectory", TypeConverters::String)
      end
      Requests::GetRecordDirectory::Response = Responses::GetRecordDirectory
    end
    # A response to <tt>GetSourceFilterList</tt> request.
    # @see Mixins::Request#get_source_filter_list
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getsourcefilterlist
    class GetSourceFilterList < Response
      # @!attribute [r] filters
      # @return [Array<Hash>] <tt>filters</tt> field
      def filters
        get_field("filters", TypeConverters::Array[TypeConverters::Object])
      end
      Requests::GetSourceFilterList::Response = Responses::GetSourceFilterList
    end
    # A response to <tt>GetSourceFilterDefaultSettings</tt> request.
    # @see Mixins::Request#get_source_filter_default_settings
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getsourcefilterdefaultsettings
    class GetSourceFilterDefaultSettings < Response
      # @!attribute [r] default_filter_settings
      # @return [Hash] <tt>defaultFilterSettings</tt> field
      def default_filter_settings
        get_field("defaultFilterSettings", TypeConverters::Object)
      end
      Requests::GetSourceFilterDefaultSettings::Response =
        Responses::GetSourceFilterDefaultSettings
    end
    # A response to <tt>CreateSourceFilter</tt> request.
    # @see Mixins::Request#create_source_filter
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#createsourcefilter
    class CreateSourceFilter < Response
      Requests::CreateSourceFilter::Response = Responses::CreateSourceFilter
    end
    # A response to <tt>RemoveSourceFilter</tt> request.
    # @see Mixins::Request#remove_source_filter
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#removesourcefilter
    class RemoveSourceFilter < Response
      Requests::RemoveSourceFilter::Response = Responses::RemoveSourceFilter
    end
    # A response to <tt>SetSourceFilterName</tt> request.
    # @see Mixins::Request#set_source_filter_name
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setsourcefiltername
    class SetSourceFilterName < Response
      Requests::SetSourceFilterName::Response = Responses::SetSourceFilterName
    end
    # A response to <tt>GetSourceFilter</tt> request.
    # @see Mixins::Request#get_source_filter
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getsourcefilter
    class GetSourceFilter < Response
      # @!attribute [r] filter_enabled
      # @return [Boolean] <tt>filterEnabled</tt> field
      def filter_enabled
        get_field("filterEnabled", TypeConverters::Boolean)
      end
      # @!attribute [r] filter_index
      # @return [Numeric] <tt>filterIndex</tt> field
      def filter_index
        get_field("filterIndex", TypeConverters::Number)
      end
      # @!attribute [r] filter_kind
      # @return [String] <tt>filterKind</tt> field
      def filter_kind
        get_field("filterKind", TypeConverters::String)
      end
      # @!attribute [r] filter_settings
      # @return [Hash] <tt>filterSettings</tt> field
      def filter_settings
        get_field("filterSettings", TypeConverters::Object)
      end
      Requests::GetSourceFilter::Response = Responses::GetSourceFilter
    end
    # A response to <tt>SetSourceFilterIndex</tt> request.
    # @see Mixins::Request#set_source_filter_index
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setsourcefilterindex
    class SetSourceFilterIndex < Response
      Requests::SetSourceFilterIndex::Response = Responses::SetSourceFilterIndex
    end
    # A response to <tt>SetSourceFilterSettings</tt> request.
    # @see Mixins::Request#set_source_filter_settings
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setsourcefiltersettings
    class SetSourceFilterSettings < Response
      Requests::SetSourceFilterSettings::Response =
        Responses::SetSourceFilterSettings
    end
    # A response to <tt>SetSourceFilterEnabled</tt> request.
    # @see Mixins::Request#set_source_filter_enabled
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setsourcefilterenabled
    class SetSourceFilterEnabled < Response
      Requests::SetSourceFilterEnabled::Response =
        Responses::SetSourceFilterEnabled
    end
    # A response to <tt>GetVersion</tt> request.
    # @see Mixins::Request#get_version
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getversion
    class GetVersion < Response
      # @!attribute [r] obs_version
      # @return [String] <tt>obsVersion</tt> field
      def obs_version
        get_field("obsVersion", TypeConverters::String)
      end
      # @!attribute [r] obs_web_socket_version
      # @return [String] <tt>obsWebSocketVersion</tt> field
      def obs_web_socket_version
        get_field("obsWebSocketVersion", TypeConverters::String)
      end
      # @!attribute [r] rpc_version
      # @return [Numeric] <tt>rpcVersion</tt> field
      def rpc_version
        get_field("rpcVersion", TypeConverters::Number)
      end
      # @!attribute [r] available_requests
      # @return [Array<String>] <tt>availableRequests</tt> field
      def available_requests
        get_field(
          "availableRequests",
          TypeConverters::Array[TypeConverters::String]
        )
      end
      # @!attribute [r] supported_image_formats
      # @return [Array<String>] <tt>supportedImageFormats</tt> field
      def supported_image_formats
        get_field(
          "supportedImageFormats",
          TypeConverters::Array[TypeConverters::String]
        )
      end
      # @!attribute [r] platform
      # @return [String] <tt>platform</tt> field
      def platform
        get_field("platform", TypeConverters::String)
      end
      # @!attribute [r] platform_description
      # @return [String] <tt>platformDescription</tt> field
      def platform_description
        get_field("platformDescription", TypeConverters::String)
      end
      Requests::GetVersion::Response = Responses::GetVersion
    end
    # A response to <tt>GetStats</tt> request.
    # @see Mixins::Request#get_stats
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getstats
    class GetStats < Response
      # @!attribute [r] cpu_usage
      # @return [Numeric] <tt>cpuUsage</tt> field
      def cpu_usage
        get_field("cpuUsage", TypeConverters::Number)
      end
      # @!attribute [r] memory_usage
      # @return [Numeric] <tt>memoryUsage</tt> field
      def memory_usage
        get_field("memoryUsage", TypeConverters::Number)
      end
      # @!attribute [r] available_disk_space
      # @return [Numeric] <tt>availableDiskSpace</tt> field
      def available_disk_space
        get_field("availableDiskSpace", TypeConverters::Number)
      end
      # @!attribute [r] active_fps
      # @return [Numeric] <tt>activeFps</tt> field
      def active_fps
        get_field("activeFps", TypeConverters::Number)
      end
      # @!attribute [r] average_frame_render_time
      # @return [Numeric] <tt>averageFrameRenderTime</tt> field
      def average_frame_render_time
        get_field("averageFrameRenderTime", TypeConverters::Number)
      end
      # @!attribute [r] render_skipped_frames
      # @return [Numeric] <tt>renderSkippedFrames</tt> field
      def render_skipped_frames
        get_field("renderSkippedFrames", TypeConverters::Number)
      end
      # @!attribute [r] render_total_frames
      # @return [Numeric] <tt>renderTotalFrames</tt> field
      def render_total_frames
        get_field("renderTotalFrames", TypeConverters::Number)
      end
      # @!attribute [r] output_skipped_frames
      # @return [Numeric] <tt>outputSkippedFrames</tt> field
      def output_skipped_frames
        get_field("outputSkippedFrames", TypeConverters::Number)
      end
      # @!attribute [r] output_total_frames
      # @return [Numeric] <tt>outputTotalFrames</tt> field
      def output_total_frames
        get_field("outputTotalFrames", TypeConverters::Number)
      end
      # @!attribute [r] web_socket_session_incoming_messages
      # @return [Numeric] <tt>webSocketSessionIncomingMessages</tt> field
      def web_socket_session_incoming_messages
        get_field("webSocketSessionIncomingMessages", TypeConverters::Number)
      end
      # @!attribute [r] web_socket_session_outgoing_messages
      # @return [Numeric] <tt>webSocketSessionOutgoingMessages</tt> field
      def web_socket_session_outgoing_messages
        get_field("webSocketSessionOutgoingMessages", TypeConverters::Number)
      end
      Requests::GetStats::Response = Responses::GetStats
    end
    # A response to <tt>BroadcastCustomEvent</tt> request.
    # @see Mixins::Request#broadcast_custom_event
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#broadcastcustomevent
    class BroadcastCustomEvent < Response
      Requests::BroadcastCustomEvent::Response = Responses::BroadcastCustomEvent
    end
    # A response to <tt>CallVendorRequest</tt> request.
    # @see Mixins::Request#call_vendor_request
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#callvendorrequest
    class CallVendorRequest < Response
      # @!attribute [r] response_data
      # @return [Hash] <tt>responseData</tt> field
      def response_data
        get_field("responseData", TypeConverters::Object)
      end
      Requests::CallVendorRequest::Response = Responses::CallVendorRequest
    end
    # A response to <tt>GetHotkeyList</tt> request.
    # @see Mixins::Request#get_hotkey_list
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#gethotkeylist
    class GetHotkeyList < Response
      # @!attribute [r] hotkeys
      # @return [Array<String>] <tt>hotkeys</tt> field
      def hotkeys
        get_field("hotkeys", TypeConverters::Array[TypeConverters::String])
      end
      Requests::GetHotkeyList::Response = Responses::GetHotkeyList
    end
    # A response to <tt>TriggerHotkeyByName</tt> request.
    # @see Mixins::Request#trigger_hotkey_by_name
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#triggerhotkeybyname
    class TriggerHotkeyByName < Response
      Requests::TriggerHotkeyByName::Response = Responses::TriggerHotkeyByName
    end
    # A response to <tt>TriggerHotkeyByKeySequence</tt> request.
    # @see Mixins::Request#trigger_hotkey_by_key_sequence
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#triggerhotkeybykeysequence
    class TriggerHotkeyByKeySequence < Response
      Requests::TriggerHotkeyByKeySequence::Response =
        Responses::TriggerHotkeyByKeySequence
    end
    # A response to <tt>Sleep</tt> request.
    # @see Mixins::Request#sleep
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#sleep
    class Sleep < Response
      Requests::Sleep::Response = Responses::Sleep
    end
    # A response to <tt>GetInputList</tt> request.
    # @see Mixins::Request#get_input_list
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getinputlist
    class GetInputList < Response
      # @!attribute [r] inputs
      # @return [Array<Hash>] <tt>inputs</tt> field
      def inputs
        get_field("inputs", TypeConverters::Array[TypeConverters::Object])
      end
      Requests::GetInputList::Response = Responses::GetInputList
    end
    # A response to <tt>GetInputKindList</tt> request.
    # @see Mixins::Request#get_input_kind_list
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getinputkindlist
    class GetInputKindList < Response
      # @!attribute [r] input_kinds
      # @return [Array<String>] <tt>inputKinds</tt> field
      def input_kinds
        get_field("inputKinds", TypeConverters::Array[TypeConverters::String])
      end
      Requests::GetInputKindList::Response = Responses::GetInputKindList
    end
    # A response to <tt>GetSpecialInputs</tt> request.
    # @see Mixins::Request#get_special_inputs
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getspecialinputs
    class GetSpecialInputs < Response
      # @!attribute [r] desktop1
      # @return [String] <tt>desktop1</tt> field
      def desktop1
        get_field("desktop1", TypeConverters::String)
      end
      # @!attribute [r] desktop2
      # @return [String] <tt>desktop2</tt> field
      def desktop2
        get_field("desktop2", TypeConverters::String)
      end
      # @!attribute [r] mic1
      # @return [String] <tt>mic1</tt> field
      def mic1
        get_field("mic1", TypeConverters::String)
      end
      # @!attribute [r] mic2
      # @return [String] <tt>mic2</tt> field
      def mic2
        get_field("mic2", TypeConverters::String)
      end
      # @!attribute [r] mic3
      # @return [String] <tt>mic3</tt> field
      def mic3
        get_field("mic3", TypeConverters::String)
      end
      # @!attribute [r] mic4
      # @return [String] <tt>mic4</tt> field
      def mic4
        get_field("mic4", TypeConverters::String)
      end
      Requests::GetSpecialInputs::Response = Responses::GetSpecialInputs
    end
    # A response to <tt>CreateInput</tt> request.
    # @see Mixins::Request#create_input
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#createinput
    class CreateInput < Response
      # @!attribute [r] scene_item_id
      # @return [Numeric] <tt>sceneItemId</tt> field
      def scene_item_id
        get_field("sceneItemId", TypeConverters::Number)
      end
      Requests::CreateInput::Response = Responses::CreateInput
    end
    # A response to <tt>RemoveInput</tt> request.
    # @see Mixins::Request#remove_input
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#removeinput
    class RemoveInput < Response
      Requests::RemoveInput::Response = Responses::RemoveInput
    end
    # A response to <tt>SetInputName</tt> request.
    # @see Mixins::Request#set_input_name
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setinputname
    class SetInputName < Response
      Requests::SetInputName::Response = Responses::SetInputName
    end
    # A response to <tt>GetInputDefaultSettings</tt> request.
    # @see Mixins::Request#get_input_default_settings
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getinputdefaultsettings
    class GetInputDefaultSettings < Response
      # @!attribute [r] default_input_settings
      # @return [Hash] <tt>defaultInputSettings</tt> field
      def default_input_settings
        get_field("defaultInputSettings", TypeConverters::Object)
      end
      Requests::GetInputDefaultSettings::Response =
        Responses::GetInputDefaultSettings
    end
    # A response to <tt>GetInputSettings</tt> request.
    # @see Mixins::Request#get_input_settings
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getinputsettings
    class GetInputSettings < Response
      # @!attribute [r] input_settings
      # @return [Hash] <tt>inputSettings</tt> field
      def input_settings
        get_field("inputSettings", TypeConverters::Object)
      end
      # @!attribute [r] input_kind
      # @return [String] <tt>inputKind</tt> field
      def input_kind
        get_field("inputKind", TypeConverters::String)
      end
      Requests::GetInputSettings::Response = Responses::GetInputSettings
    end
    # A response to <tt>SetInputSettings</tt> request.
    # @see Mixins::Request#set_input_settings
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setinputsettings
    class SetInputSettings < Response
      Requests::SetInputSettings::Response = Responses::SetInputSettings
    end
    # A response to <tt>GetInputMute</tt> request.
    # @see Mixins::Request#get_input_mute
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getinputmute
    class GetInputMute < Response
      # @!attribute [r] input_muted
      # @return [Boolean] <tt>inputMuted</tt> field
      def input_muted
        get_field("inputMuted", TypeConverters::Boolean)
      end
      Requests::GetInputMute::Response = Responses::GetInputMute
    end
    # A response to <tt>SetInputMute</tt> request.
    # @see Mixins::Request#set_input_mute
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setinputmute
    class SetInputMute < Response
      Requests::SetInputMute::Response = Responses::SetInputMute
    end
    # A response to <tt>ToggleInputMute</tt> request.
    # @see Mixins::Request#toggle_input_mute
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#toggleinputmute
    class ToggleInputMute < Response
      # @!attribute [r] input_muted
      # @return [Boolean] <tt>inputMuted</tt> field
      def input_muted
        get_field("inputMuted", TypeConverters::Boolean)
      end
      Requests::ToggleInputMute::Response = Responses::ToggleInputMute
    end
    # A response to <tt>GetInputVolume</tt> request.
    # @see Mixins::Request#get_input_volume
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getinputvolume
    class GetInputVolume < Response
      # @!attribute [r] input_volume_mul
      # @return [Numeric] <tt>inputVolumeMul</tt> field
      def input_volume_mul
        get_field("inputVolumeMul", TypeConverters::Number)
      end
      # @!attribute [r] input_volume_db
      # @return [Numeric] <tt>inputVolumeDb</tt> field
      def input_volume_db
        get_field("inputVolumeDb", TypeConverters::Number)
      end
      Requests::GetInputVolume::Response = Responses::GetInputVolume
    end
    # A response to <tt>SetInputVolume</tt> request.
    # @see Mixins::Request#set_input_volume
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setinputvolume
    class SetInputVolume < Response
      Requests::SetInputVolume::Response = Responses::SetInputVolume
    end
    # A response to <tt>GetInputAudioBalance</tt> request.
    # @see Mixins::Request#get_input_audio_balance
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getinputaudiobalance
    class GetInputAudioBalance < Response
      # @!attribute [r] input_audio_balance
      # @return [Numeric] <tt>inputAudioBalance</tt> field
      def input_audio_balance
        get_field("inputAudioBalance", TypeConverters::Number)
      end
      Requests::GetInputAudioBalance::Response = Responses::GetInputAudioBalance
    end
    # A response to <tt>SetInputAudioBalance</tt> request.
    # @see Mixins::Request#set_input_audio_balance
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setinputaudiobalance
    class SetInputAudioBalance < Response
      Requests::SetInputAudioBalance::Response = Responses::SetInputAudioBalance
    end
    # A response to <tt>GetInputAudioSyncOffset</tt> request.
    # @see Mixins::Request#get_input_audio_sync_offset
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getinputaudiosyncoffset
    class GetInputAudioSyncOffset < Response
      # @!attribute [r] input_audio_sync_offset
      # @return [Numeric] <tt>inputAudioSyncOffset</tt> field
      def input_audio_sync_offset
        get_field("inputAudioSyncOffset", TypeConverters::Number)
      end
      Requests::GetInputAudioSyncOffset::Response =
        Responses::GetInputAudioSyncOffset
    end
    # A response to <tt>SetInputAudioSyncOffset</tt> request.
    # @see Mixins::Request#set_input_audio_sync_offset
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setinputaudiosyncoffset
    class SetInputAudioSyncOffset < Response
      Requests::SetInputAudioSyncOffset::Response =
        Responses::SetInputAudioSyncOffset
    end
    # A response to <tt>GetInputAudioMonitorType</tt> request.
    # @see Mixins::Request#get_input_audio_monitor_type
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getinputaudiomonitortype
    class GetInputAudioMonitorType < Response
      # @!attribute [r] monitor_type
      # @return [String] <tt>monitorType</tt> field
      def monitor_type
        get_field("monitorType", TypeConverters::String)
      end
      Requests::GetInputAudioMonitorType::Response =
        Responses::GetInputAudioMonitorType
    end
    # A response to <tt>SetInputAudioMonitorType</tt> request.
    # @see Mixins::Request#set_input_audio_monitor_type
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setinputaudiomonitortype
    class SetInputAudioMonitorType < Response
      Requests::SetInputAudioMonitorType::Response =
        Responses::SetInputAudioMonitorType
    end
    # A response to <tt>GetInputAudioTracks</tt> request.
    # @see Mixins::Request#get_input_audio_tracks
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getinputaudiotracks
    class GetInputAudioTracks < Response
      # @!attribute [r] input_audio_tracks
      # @return [Hash] <tt>inputAudioTracks</tt> field
      def input_audio_tracks
        get_field("inputAudioTracks", TypeConverters::Object)
      end
      Requests::GetInputAudioTracks::Response = Responses::GetInputAudioTracks
    end
    # A response to <tt>SetInputAudioTracks</tt> request.
    # @see Mixins::Request#set_input_audio_tracks
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setinputaudiotracks
    class SetInputAudioTracks < Response
      Requests::SetInputAudioTracks::Response = Responses::SetInputAudioTracks
    end
    # A response to <tt>GetInputPropertiesListPropertyItems</tt> request.
    # @see Mixins::Request#get_input_properties_list_property_items
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getinputpropertieslistpropertyitems
    class GetInputPropertiesListPropertyItems < Response
      # @!attribute [r] property_items
      # @return [Array<Hash>] <tt>propertyItems</tt> field
      def property_items
        get_field(
          "propertyItems",
          TypeConverters::Array[TypeConverters::Object]
        )
      end
      Requests::GetInputPropertiesListPropertyItems::Response =
        Responses::GetInputPropertiesListPropertyItems
    end
    # A response to <tt>PressInputPropertiesButton</tt> request.
    # @see Mixins::Request#press_input_properties_button
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#pressinputpropertiesbutton
    class PressInputPropertiesButton < Response
      Requests::PressInputPropertiesButton::Response =
        Responses::PressInputPropertiesButton
    end
    # A response to <tt>GetMediaInputStatus</tt> request.
    # @see Mixins::Request#get_media_input_status
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getmediainputstatus
    class GetMediaInputStatus < Response
      # @!attribute [r] media_state
      # @return [String] <tt>mediaState</tt> field
      def media_state
        get_field("mediaState", TypeConverters::String)
      end
      # @!attribute [r] media_duration
      # @return [Numeric] <tt>mediaDuration</tt> field
      def media_duration
        get_field("mediaDuration", TypeConverters::Number)
      end
      # @!attribute [r] media_cursor
      # @return [Numeric] <tt>mediaCursor</tt> field
      def media_cursor
        get_field("mediaCursor", TypeConverters::Number)
      end
      Requests::GetMediaInputStatus::Response = Responses::GetMediaInputStatus
    end
    # A response to <tt>SetMediaInputCursor</tt> request.
    # @see Mixins::Request#set_media_input_cursor
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setmediainputcursor
    class SetMediaInputCursor < Response
      Requests::SetMediaInputCursor::Response = Responses::SetMediaInputCursor
    end
    # A response to <tt>OffsetMediaInputCursor</tt> request.
    # @see Mixins::Request#offset_media_input_cursor
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#offsetmediainputcursor
    class OffsetMediaInputCursor < Response
      Requests::OffsetMediaInputCursor::Response =
        Responses::OffsetMediaInputCursor
    end
    # A response to <tt>TriggerMediaInputAction</tt> request.
    # @see Mixins::Request#trigger_media_input_action
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#triggermediainputaction
    class TriggerMediaInputAction < Response
      Requests::TriggerMediaInputAction::Response =
        Responses::TriggerMediaInputAction
    end
    # A response to <tt>GetVirtualCamStatus</tt> request.
    # @see Mixins::Request#get_virtual_cam_status
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getvirtualcamstatus
    class GetVirtualCamStatus < Response
      # @!attribute [r] output_active
      # @return [Boolean] <tt>outputActive</tt> field
      def output_active
        get_field("outputActive", TypeConverters::Boolean)
      end
      Requests::GetVirtualCamStatus::Response = Responses::GetVirtualCamStatus
    end
    # A response to <tt>ToggleVirtualCam</tt> request.
    # @see Mixins::Request#toggle_virtual_cam
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#togglevirtualcam
    class ToggleVirtualCam < Response
      # @!attribute [r] output_active
      # @return [Boolean] <tt>outputActive</tt> field
      def output_active
        get_field("outputActive", TypeConverters::Boolean)
      end
      Requests::ToggleVirtualCam::Response = Responses::ToggleVirtualCam
    end
    # A response to <tt>StartVirtualCam</tt> request.
    # @see Mixins::Request#start_virtual_cam
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#startvirtualcam
    class StartVirtualCam < Response
      Requests::StartVirtualCam::Response = Responses::StartVirtualCam
    end
    # A response to <tt>StopVirtualCam</tt> request.
    # @see Mixins::Request#stop_virtual_cam
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#stopvirtualcam
    class StopVirtualCam < Response
      Requests::StopVirtualCam::Response = Responses::StopVirtualCam
    end
    # A response to <tt>GetReplayBufferStatus</tt> request.
    # @see Mixins::Request#get_replay_buffer_status
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getreplaybufferstatus
    class GetReplayBufferStatus < Response
      # @!attribute [r] output_active
      # @return [Boolean] <tt>outputActive</tt> field
      def output_active
        get_field("outputActive", TypeConverters::Boolean)
      end
      Requests::GetReplayBufferStatus::Response =
        Responses::GetReplayBufferStatus
    end
    # A response to <tt>ToggleReplayBuffer</tt> request.
    # @see Mixins::Request#toggle_replay_buffer
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#togglereplaybuffer
    class ToggleReplayBuffer < Response
      # @!attribute [r] output_active
      # @return [Boolean] <tt>outputActive</tt> field
      def output_active
        get_field("outputActive", TypeConverters::Boolean)
      end
      Requests::ToggleReplayBuffer::Response = Responses::ToggleReplayBuffer
    end
    # A response to <tt>StartReplayBuffer</tt> request.
    # @see Mixins::Request#start_replay_buffer
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#startreplaybuffer
    class StartReplayBuffer < Response
      Requests::StartReplayBuffer::Response = Responses::StartReplayBuffer
    end
    # A response to <tt>StopReplayBuffer</tt> request.
    # @see Mixins::Request#stop_replay_buffer
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#stopreplaybuffer
    class StopReplayBuffer < Response
      Requests::StopReplayBuffer::Response = Responses::StopReplayBuffer
    end
    # A response to <tt>SaveReplayBuffer</tt> request.
    # @see Mixins::Request#save_replay_buffer
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#savereplaybuffer
    class SaveReplayBuffer < Response
      Requests::SaveReplayBuffer::Response = Responses::SaveReplayBuffer
    end
    # A response to <tt>GetLastReplayBufferReplay</tt> request.
    # @see Mixins::Request#get_last_replay_buffer_replay
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getlastreplaybufferreplay
    class GetLastReplayBufferReplay < Response
      # @!attribute [r] saved_replay_path
      # @return [String] <tt>savedReplayPath</tt> field
      def saved_replay_path
        get_field("savedReplayPath", TypeConverters::String)
      end
      Requests::GetLastReplayBufferReplay::Response =
        Responses::GetLastReplayBufferReplay
    end
    # A response to <tt>GetRecordStatus</tt> request.
    # @see Mixins::Request#get_record_status
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getrecordstatus
    class GetRecordStatus < Response
      # @!attribute [r] output_active
      # @return [Boolean] <tt>outputActive</tt> field
      def output_active
        get_field("outputActive", TypeConverters::Boolean)
      end
      # @!attribute [r] ouput_paused
      # @return [Boolean] <tt>ouputPaused</tt> field
      def ouput_paused
        get_field("ouputPaused", TypeConverters::Boolean)
      end
      # @!attribute [r] output_timecode
      # @return [String] <tt>outputTimecode</tt> field
      def output_timecode
        get_field("outputTimecode", TypeConverters::String)
      end
      # @!attribute [r] output_duration
      # @return [Numeric] <tt>outputDuration</tt> field
      def output_duration
        get_field("outputDuration", TypeConverters::Number)
      end
      # @!attribute [r] output_bytes
      # @return [Numeric] <tt>outputBytes</tt> field
      def output_bytes
        get_field("outputBytes", TypeConverters::Number)
      end
      Requests::GetRecordStatus::Response = Responses::GetRecordStatus
    end
    # A response to <tt>ToggleRecord</tt> request.
    # @see Mixins::Request#toggle_record
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#togglerecord
    class ToggleRecord < Response
      Requests::ToggleRecord::Response = Responses::ToggleRecord
    end
    # A response to <tt>StartRecord</tt> request.
    # @see Mixins::Request#start_record
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#startrecord
    class StartRecord < Response
      Requests::StartRecord::Response = Responses::StartRecord
    end
    # A response to <tt>StopRecord</tt> request.
    # @see Mixins::Request#stop_record
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#stoprecord
    class StopRecord < Response
      Requests::StopRecord::Response = Responses::StopRecord
    end
    # A response to <tt>ToggleRecordPause</tt> request.
    # @see Mixins::Request#toggle_record_pause
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#togglerecordpause
    class ToggleRecordPause < Response
      Requests::ToggleRecordPause::Response = Responses::ToggleRecordPause
    end
    # A response to <tt>PauseRecord</tt> request.
    # @see Mixins::Request#pause_record
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#pauserecord
    class PauseRecord < Response
      Requests::PauseRecord::Response = Responses::PauseRecord
    end
    # A response to <tt>ResumeRecord</tt> request.
    # @see Mixins::Request#resume_record
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#resumerecord
    class ResumeRecord < Response
      Requests::ResumeRecord::Response = Responses::ResumeRecord
    end
    # A response to <tt>GetSceneItemList</tt> request.
    # @see Mixins::Request#get_scene_item_list
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getsceneitemlist
    class GetSceneItemList < Response
      # @!attribute [r] scene_items
      # @return [Array<Hash>] <tt>sceneItems</tt> field
      def scene_items
        get_field("sceneItems", TypeConverters::Array[TypeConverters::Object])
      end
      Requests::GetSceneItemList::Response = Responses::GetSceneItemList
    end
    # A response to <tt>GetGroupItemList</tt> request.
    # @see Mixins::Request#get_group_item_list
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getgroupitemlist
    class GetGroupItemList < Response
      # @!attribute [r] scene_items
      # @return [Array<Hash>] <tt>sceneItems</tt> field
      def scene_items
        get_field("sceneItems", TypeConverters::Array[TypeConverters::Object])
      end
      Requests::GetGroupItemList::Response = Responses::GetGroupItemList
    end
    # A response to <tt>GetSceneItemId</tt> request.
    # @see Mixins::Request#get_scene_item_id
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getsceneitemid
    class GetSceneItemId < Response
      # @!attribute [r] scene_item_id
      # @return [Numeric] <tt>sceneItemId</tt> field
      def scene_item_id
        get_field("sceneItemId", TypeConverters::Number)
      end
      Requests::GetSceneItemId::Response = Responses::GetSceneItemId
    end
    # A response to <tt>CreateSceneItem</tt> request.
    # @see Mixins::Request#create_scene_item
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#createsceneitem
    class CreateSceneItem < Response
      # @!attribute [r] scene_item_id
      # @return [Numeric] <tt>sceneItemId</tt> field
      def scene_item_id
        get_field("sceneItemId", TypeConverters::Number)
      end
      Requests::CreateSceneItem::Response = Responses::CreateSceneItem
    end
    # A response to <tt>RemoveSceneItem</tt> request.
    # @see Mixins::Request#remove_scene_item
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#removesceneitem
    class RemoveSceneItem < Response
      Requests::RemoveSceneItem::Response = Responses::RemoveSceneItem
    end
    # A response to <tt>DuplicateSceneItem</tt> request.
    # @see Mixins::Request#duplicate_scene_item
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#duplicatesceneitem
    class DuplicateSceneItem < Response
      # @!attribute [r] scene_item_id
      # @return [Numeric] <tt>sceneItemId</tt> field
      def scene_item_id
        get_field("sceneItemId", TypeConverters::Number)
      end
      Requests::DuplicateSceneItem::Response = Responses::DuplicateSceneItem
    end
    # A response to <tt>GetSceneItemTransform</tt> request.
    # @see Mixins::Request#get_scene_item_transform
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getsceneitemtransform
    class GetSceneItemTransform < Response
      # @!attribute [r] scene_item_transform
      # @return [Hash] <tt>sceneItemTransform</tt> field
      def scene_item_transform
        get_field("sceneItemTransform", TypeConverters::Object)
      end
      Requests::GetSceneItemTransform::Response =
        Responses::GetSceneItemTransform
    end
    # A response to <tt>SetSceneItemTransform</tt> request.
    # @see Mixins::Request#set_scene_item_transform
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setsceneitemtransform
    class SetSceneItemTransform < Response
      Requests::SetSceneItemTransform::Response =
        Responses::SetSceneItemTransform
    end
    # A response to <tt>GetSceneItemEnabled</tt> request.
    # @see Mixins::Request#get_scene_item_enabled
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getsceneitemenabled
    class GetSceneItemEnabled < Response
      # @!attribute [r] scene_item_enabled
      # @return [Boolean] <tt>sceneItemEnabled</tt> field
      def scene_item_enabled
        get_field("sceneItemEnabled", TypeConverters::Boolean)
      end
      Requests::GetSceneItemEnabled::Response = Responses::GetSceneItemEnabled
    end
    # A response to <tt>SetSceneItemEnabled</tt> request.
    # @see Mixins::Request#set_scene_item_enabled
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setsceneitemenabled
    class SetSceneItemEnabled < Response
      Requests::SetSceneItemEnabled::Response = Responses::SetSceneItemEnabled
    end
    # A response to <tt>GetSceneItemLocked</tt> request.
    # @see Mixins::Request#get_scene_item_locked
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getsceneitemlocked
    class GetSceneItemLocked < Response
      # @!attribute [r] scene_item_locked
      # @return [Boolean] <tt>sceneItemLocked</tt> field
      def scene_item_locked
        get_field("sceneItemLocked", TypeConverters::Boolean)
      end
      Requests::GetSceneItemLocked::Response = Responses::GetSceneItemLocked
    end
    # A response to <tt>SetSceneItemLocked</tt> request.
    # @see Mixins::Request#set_scene_item_locked
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setsceneitemlocked
    class SetSceneItemLocked < Response
      Requests::SetSceneItemLocked::Response = Responses::SetSceneItemLocked
    end
    # A response to <tt>GetSceneItemIndex</tt> request.
    # @see Mixins::Request#get_scene_item_index
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getsceneitemindex
    class GetSceneItemIndex < Response
      # @!attribute [r] scene_item_index
      # @return [Numeric] <tt>sceneItemIndex</tt> field
      def scene_item_index
        get_field("sceneItemIndex", TypeConverters::Number)
      end
      Requests::GetSceneItemIndex::Response = Responses::GetSceneItemIndex
    end
    # A response to <tt>SetSceneItemIndex</tt> request.
    # @see Mixins::Request#set_scene_item_index
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setsceneitemindex
    class SetSceneItemIndex < Response
      Requests::SetSceneItemIndex::Response = Responses::SetSceneItemIndex
    end
    # A response to <tt>GetSceneItemBlendMode</tt> request.
    # @see Mixins::Request#get_scene_item_blend_mode
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getsceneitemblendmode
    class GetSceneItemBlendMode < Response
      # @!attribute [r] scene_item_blend_mode
      # @return [String] <tt>sceneItemBlendMode</tt> field
      def scene_item_blend_mode
        get_field("sceneItemBlendMode", TypeConverters::String)
      end
      Requests::GetSceneItemBlendMode::Response =
        Responses::GetSceneItemBlendMode
    end
    # A response to <tt>SetSceneItemBlendMode</tt> request.
    # @see Mixins::Request#set_scene_item_blend_mode
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setsceneitemblendmode
    class SetSceneItemBlendMode < Response
      Requests::SetSceneItemBlendMode::Response =
        Responses::SetSceneItemBlendMode
    end
    # A response to <tt>GetSceneList</tt> request.
    # @see Mixins::Request#get_scene_list
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getscenelist
    class GetSceneList < Response
      # @!attribute [r] current_program_scene_name
      # @return [String] <tt>currentProgramSceneName</tt> field
      def current_program_scene_name
        get_field("currentProgramSceneName", TypeConverters::String)
      end
      # @!attribute [r] current_preview_scene_name
      # @return [String] <tt>currentPreviewSceneName</tt> field
      def current_preview_scene_name
        get_field("currentPreviewSceneName", TypeConverters::String)
      end
      # @!attribute [r] scenes
      # @return [Array<Hash>] <tt>scenes</tt> field
      def scenes
        get_field("scenes", TypeConverters::Array[TypeConverters::Object])
      end
      Requests::GetSceneList::Response = Responses::GetSceneList
    end
    # A response to <tt>GetGroupList</tt> request.
    # @see Mixins::Request#get_group_list
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getgrouplist
    class GetGroupList < Response
      # @!attribute [r] groups
      # @return [Array<String>] <tt>groups</tt> field
      def groups
        get_field("groups", TypeConverters::Array[TypeConverters::String])
      end
      Requests::GetGroupList::Response = Responses::GetGroupList
    end
    # A response to <tt>GetCurrentProgramScene</tt> request.
    # @see Mixins::Request#get_current_program_scene
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getcurrentprogramscene
    class GetCurrentProgramScene < Response
      # @!attribute [r] current_program_scene_name
      # @return [String] <tt>currentProgramSceneName</tt> field
      def current_program_scene_name
        get_field("currentProgramSceneName", TypeConverters::String)
      end
      Requests::GetCurrentProgramScene::Response =
        Responses::GetCurrentProgramScene
    end
    # A response to <tt>SetCurrentProgramScene</tt> request.
    # @see Mixins::Request#set_current_program_scene
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setcurrentprogramscene
    class SetCurrentProgramScene < Response
      Requests::SetCurrentProgramScene::Response =
        Responses::SetCurrentProgramScene
    end
    # A response to <tt>GetCurrentPreviewScene</tt> request.
    # @see Mixins::Request#get_current_preview_scene
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getcurrentpreviewscene
    class GetCurrentPreviewScene < Response
      # @!attribute [r] current_preview_scene_name
      # @return [String] <tt>currentPreviewSceneName</tt> field
      def current_preview_scene_name
        get_field("currentPreviewSceneName", TypeConverters::String)
      end
      Requests::GetCurrentPreviewScene::Response =
        Responses::GetCurrentPreviewScene
    end
    # A response to <tt>SetCurrentPreviewScene</tt> request.
    # @see Mixins::Request#set_current_preview_scene
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setcurrentpreviewscene
    class SetCurrentPreviewScene < Response
      Requests::SetCurrentPreviewScene::Response =
        Responses::SetCurrentPreviewScene
    end
    # A response to <tt>CreateScene</tt> request.
    # @see Mixins::Request#create_scene
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#createscene
    class CreateScene < Response
      Requests::CreateScene::Response = Responses::CreateScene
    end
    # A response to <tt>RemoveScene</tt> request.
    # @see Mixins::Request#remove_scene
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#removescene
    class RemoveScene < Response
      Requests::RemoveScene::Response = Responses::RemoveScene
    end
    # A response to <tt>SetSceneName</tt> request.
    # @see Mixins::Request#set_scene_name
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setscenename
    class SetSceneName < Response
      Requests::SetSceneName::Response = Responses::SetSceneName
    end
    # A response to <tt>GetSceneSceneTransitionOverride</tt> request.
    # @see Mixins::Request#get_scene_scene_transition_override
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getscenescenetransitionoverride
    class GetSceneSceneTransitionOverride < Response
      # @!attribute [r] transition_name
      # @return [String] <tt>transitionName</tt> field
      def transition_name
        get_field("transitionName", TypeConverters::String)
      end
      # @!attribute [r] transition_duration
      # @return [Numeric] <tt>transitionDuration</tt> field
      def transition_duration
        get_field("transitionDuration", TypeConverters::Number)
      end
      Requests::GetSceneSceneTransitionOverride::Response =
        Responses::GetSceneSceneTransitionOverride
    end
    # A response to <tt>SetSceneSceneTransitionOverride</tt> request.
    # @see Mixins::Request#set_scene_scene_transition_override
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setscenescenetransitionoverride
    class SetSceneSceneTransitionOverride < Response
      Requests::SetSceneSceneTransitionOverride::Response =
        Responses::SetSceneSceneTransitionOverride
    end
    # A response to <tt>GetSourceActive</tt> request.
    # @see Mixins::Request#get_source_active
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getsourceactive
    class GetSourceActive < Response
      # @!attribute [r] video_active
      # @return [Boolean] <tt>videoActive</tt> field
      def video_active
        get_field("videoActive", TypeConverters::Boolean)
      end
      # @!attribute [r] video_showing
      # @return [Boolean] <tt>videoShowing</tt> field
      def video_showing
        get_field("videoShowing", TypeConverters::Boolean)
      end
      Requests::GetSourceActive::Response = Responses::GetSourceActive
    end
    # A response to <tt>GetSourceScreenshot</tt> request.
    # @see Mixins::Request#get_source_screenshot
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getsourcescreenshot
    class GetSourceScreenshot < Response
      # @!attribute [r] image_data
      # @return [String] <tt>imageData</tt> field
      def image_data
        get_field("imageData", TypeConverters::String)
      end
      Requests::GetSourceScreenshot::Response = Responses::GetSourceScreenshot
    end
    # A response to <tt>SaveSourceScreenshot</tt> request.
    # @see Mixins::Request#save_source_screenshot
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#savesourcescreenshot
    class SaveSourceScreenshot < Response
      # @!attribute [r] image_data
      # @return [String] <tt>imageData</tt> field
      def image_data
        get_field("imageData", TypeConverters::String)
      end
      Requests::SaveSourceScreenshot::Response = Responses::SaveSourceScreenshot
    end
    # A response to <tt>GetStreamStatus</tt> request.
    # @see Mixins::Request#get_stream_status
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getstreamstatus
    class GetStreamStatus < Response
      # @!attribute [r] output_active
      # @return [Boolean] <tt>outputActive</tt> field
      def output_active
        get_field("outputActive", TypeConverters::Boolean)
      end
      # @!attribute [r] output_reconnecting
      # @return [Boolean] <tt>outputReconnecting</tt> field
      def output_reconnecting
        get_field("outputReconnecting", TypeConverters::Boolean)
      end
      # @!attribute [r] output_timecode
      # @return [String] <tt>outputTimecode</tt> field
      def output_timecode
        get_field("outputTimecode", TypeConverters::String)
      end
      # @!attribute [r] output_duration
      # @return [Numeric] <tt>outputDuration</tt> field
      def output_duration
        get_field("outputDuration", TypeConverters::Number)
      end
      # @!attribute [r] output_bytes
      # @return [Numeric] <tt>outputBytes</tt> field
      def output_bytes
        get_field("outputBytes", TypeConverters::Number)
      end
      # @!attribute [r] output_skipped_frames
      # @return [Numeric] <tt>outputSkippedFrames</tt> field
      def output_skipped_frames
        get_field("outputSkippedFrames", TypeConverters::Number)
      end
      # @!attribute [r] output_total_frames
      # @return [Numeric] <tt>outputTotalFrames</tt> field
      def output_total_frames
        get_field("outputTotalFrames", TypeConverters::Number)
      end
      Requests::GetStreamStatus::Response = Responses::GetStreamStatus
    end
    # A response to <tt>ToggleStream</tt> request.
    # @see Mixins::Request#toggle_stream
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#togglestream
    class ToggleStream < Response
      # @!attribute [r] output_active
      # @return [Boolean] <tt>outputActive</tt> field
      def output_active
        get_field("outputActive", TypeConverters::Boolean)
      end
      Requests::ToggleStream::Response = Responses::ToggleStream
    end
    # A response to <tt>StartStream</tt> request.
    # @see Mixins::Request#start_stream
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#startstream
    class StartStream < Response
      Requests::StartStream::Response = Responses::StartStream
    end
    # A response to <tt>StopStream</tt> request.
    # @see Mixins::Request#stop_stream
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#stopstream
    class StopStream < Response
      Requests::StopStream::Response = Responses::StopStream
    end
    # A response to <tt>SendStreamCaption</tt> request.
    # @see Mixins::Request#send_stream_caption
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#sendstreamcaption
    class SendStreamCaption < Response
      Requests::SendStreamCaption::Response = Responses::SendStreamCaption
    end
    # A response to <tt>GetTransitionKindList</tt> request.
    # @see Mixins::Request#get_transition_kind_list
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#gettransitionkindlist
    class GetTransitionKindList < Response
      # @!attribute [r] transition_kinds
      # @return [Array<String>] <tt>transitionKinds</tt> field
      def transition_kinds
        get_field(
          "transitionKinds",
          TypeConverters::Array[TypeConverters::String]
        )
      end
      Requests::GetTransitionKindList::Response =
        Responses::GetTransitionKindList
    end
    # A response to <tt>GetSceneTransitionList</tt> request.
    # @see Mixins::Request#get_scene_transition_list
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getscenetransitionlist
    class GetSceneTransitionList < Response
      # @!attribute [r] current_scene_transition_name
      # @return [String] <tt>currentSceneTransitionName</tt> field
      def current_scene_transition_name
        get_field("currentSceneTransitionName", TypeConverters::String)
      end
      # @!attribute [r] current_scene_transition_kind
      # @return [String] <tt>currentSceneTransitionKind</tt> field
      def current_scene_transition_kind
        get_field("currentSceneTransitionKind", TypeConverters::String)
      end
      # @!attribute [r] transitions
      # @return [Array<Hash>] <tt>transitions</tt> field
      def transitions
        get_field("transitions", TypeConverters::Array[TypeConverters::Object])
      end
      Requests::GetSceneTransitionList::Response =
        Responses::GetSceneTransitionList
    end
    # A response to <tt>GetCurrentSceneTransition</tt> request.
    # @see Mixins::Request#get_current_scene_transition
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getcurrentscenetransition
    class GetCurrentSceneTransition < Response
      # @!attribute [r] transition_name
      # @return [String] <tt>transitionName</tt> field
      def transition_name
        get_field("transitionName", TypeConverters::String)
      end
      # @!attribute [r] transition_kind
      # @return [String] <tt>transitionKind</tt> field
      def transition_kind
        get_field("transitionKind", TypeConverters::String)
      end
      # @!attribute [r] transition_fixed
      # @return [Boolean] <tt>transitionFixed</tt> field
      def transition_fixed
        get_field("transitionFixed", TypeConverters::Boolean)
      end
      # @!attribute [r] transition_duration
      # @return [Numeric] <tt>transitionDuration</tt> field
      def transition_duration
        get_field("transitionDuration", TypeConverters::Number)
      end
      # @!attribute [r] transition_configurable
      # @return [Boolean] <tt>transitionConfigurable</tt> field
      def transition_configurable
        get_field("transitionConfigurable", TypeConverters::Boolean)
      end
      # @!attribute [r] transition_settings
      # @return [Hash] <tt>transitionSettings</tt> field
      def transition_settings
        get_field("transitionSettings", TypeConverters::Object)
      end
      Requests::GetCurrentSceneTransition::Response =
        Responses::GetCurrentSceneTransition
    end
    # A response to <tt>SetCurrentSceneTransition</tt> request.
    # @see Mixins::Request#set_current_scene_transition
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setcurrentscenetransition
    class SetCurrentSceneTransition < Response
      Requests::SetCurrentSceneTransition::Response =
        Responses::SetCurrentSceneTransition
    end
    # A response to <tt>SetCurrentSceneTransitionDuration</tt> request.
    # @see Mixins::Request#set_current_scene_transition_duration
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setcurrentscenetransitionduration
    class SetCurrentSceneTransitionDuration < Response
      Requests::SetCurrentSceneTransitionDuration::Response =
        Responses::SetCurrentSceneTransitionDuration
    end
    # A response to <tt>SetCurrentSceneTransitionSettings</tt> request.
    # @see Mixins::Request#set_current_scene_transition_settings
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setcurrentscenetransitionsettings
    class SetCurrentSceneTransitionSettings < Response
      Requests::SetCurrentSceneTransitionSettings::Response =
        Responses::SetCurrentSceneTransitionSettings
    end
    # A response to <tt>GetCurrentSceneTransitionCursor</tt> request.
    # @see Mixins::Request#get_current_scene_transition_cursor
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getcurrentscenetransitioncursor
    class GetCurrentSceneTransitionCursor < Response
      # @!attribute [r] transition_cursor
      # @return [Numeric] <tt>transitionCursor</tt> field
      def transition_cursor
        get_field("transitionCursor", TypeConverters::Number)
      end
      Requests::GetCurrentSceneTransitionCursor::Response =
        Responses::GetCurrentSceneTransitionCursor
    end
    # A response to <tt>TriggerStudioModeTransition</tt> request.
    # @see Mixins::Request#trigger_studio_mode_transition
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#triggerstudiomodetransition
    class TriggerStudioModeTransition < Response
      Requests::TriggerStudioModeTransition::Response =
        Responses::TriggerStudioModeTransition
    end
    # A response to <tt>SetTBarPosition</tt> request.
    # @see Mixins::Request#set_t_bar_position
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#settbarposition
    class SetTBarPosition < Response
      Requests::SetTBarPosition::Response = Responses::SetTBarPosition
    end
    # A response to <tt>GetStudioModeEnabled</tt> request.
    # @see Mixins::Request#get_studio_mode_enabled
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getstudiomodeenabled
    class GetStudioModeEnabled < Response
      # @!attribute [r] studio_mode_enabled
      # @return [Boolean] <tt>studioModeEnabled</tt> field
      def studio_mode_enabled
        get_field("studioModeEnabled", TypeConverters::Boolean)
      end
      Requests::GetStudioModeEnabled::Response = Responses::GetStudioModeEnabled
    end
    # A response to <tt>SetStudioModeEnabled</tt> request.
    # @see Mixins::Request#set_studio_mode_enabled
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setstudiomodeenabled
    class SetStudioModeEnabled < Response
      Requests::SetStudioModeEnabled::Response = Responses::SetStudioModeEnabled
    end
    # A response to <tt>OpenInputPropertiesDialog</tt> request.
    # @see Mixins::Request#open_input_properties_dialog
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#openinputpropertiesdialog
    class OpenInputPropertiesDialog < Response
      Requests::OpenInputPropertiesDialog::Response =
        Responses::OpenInputPropertiesDialog
    end
    # A response to <tt>OpenInputFiltersDialog</tt> request.
    # @see Mixins::Request#open_input_filters_dialog
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#openinputfiltersdialog
    class OpenInputFiltersDialog < Response
      Requests::OpenInputFiltersDialog::Response =
        Responses::OpenInputFiltersDialog
    end
    # A response to <tt>OpenInputInteractDialog</tt> request.
    # @see Mixins::Request#open_input_interact_dialog
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#openinputinteractdialog
    class OpenInputInteractDialog < Response
      Requests::OpenInputInteractDialog::Response =
        Responses::OpenInputInteractDialog
    end
    # A response to <tt>GetMonitorList</tt> request.
    # @see Mixins::Request#get_monitor_list
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getmonitorlist
    class GetMonitorList < Response
      # @!attribute [r] monitors
      # @return [Array<Hash>] <tt>monitors</tt> field
      def monitors
        get_field("monitors", TypeConverters::Array[TypeConverters::Object])
      end
      Requests::GetMonitorList::Response = Responses::GetMonitorList
    end
  end # module Responses
end
