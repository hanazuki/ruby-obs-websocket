# frozen_string_literal: false

module OBS::WS::Protocol
  module Requests
    # An instance of <tt>GetPersistentData</tt> request.
    # @see Mixins::Request#get_persistent_data
    # @see Responses::GetPersistentData
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getpersistentdata
    class GetPersistentData < Request
      TYPE = "GetPersistentData"
      def initialize(args)
        super(
          {
            "realm" =>
              begin
                TypeConverters::String.as_json(args[:realm])
              rescue ConversionError => e
                raise TypeError,
                      "realm" \
                        ": #{e.message}"
              end,
            "slotName" =>
              begin
                TypeConverters::String.as_json(args[:slot_name])
              rescue ConversionError => e
                raise TypeError,
                      "slot_name" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>SetPersistentData</tt> request.
    # @see Mixins::Request#set_persistent_data
    # @see Responses::SetPersistentData
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setpersistentdata
    class SetPersistentData < Request
      TYPE = "SetPersistentData"
      def initialize(args)
        super(
          {
            "realm" =>
              begin
                TypeConverters::String.as_json(args[:realm])
              rescue ConversionError => e
                raise TypeError,
                      "realm" \
                        ": #{e.message}"
              end,
            "slotName" =>
              begin
                TypeConverters::String.as_json(args[:slot_name])
              rescue ConversionError => e
                raise TypeError,
                      "slot_name" \
                        ": #{e.message}"
              end,
            "slotValue" =>
              begin
                TypeConverters::Any.as_json(args[:slot_value])
              rescue ConversionError => e
                raise TypeError,
                      "slot_value" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>GetSceneCollectionList</tt> request.
    # @see Mixins::Request#get_scene_collection_list
    # @see Responses::GetSceneCollectionList
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getscenecollectionlist
    class GetSceneCollectionList < Request
      TYPE = "GetSceneCollectionList"
      def initialize(args)
        super({})
      end
    end
    # An instance of <tt>SetCurrentSceneCollection</tt> request.
    # @see Mixins::Request#set_current_scene_collection
    # @see Responses::SetCurrentSceneCollection
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setcurrentscenecollection
    class SetCurrentSceneCollection < Request
      TYPE = "SetCurrentSceneCollection"
      def initialize(args)
        super(
          {
            "sceneCollectionName" =>
              begin
                TypeConverters::String.as_json(args[:scene_collection_name])
              rescue ConversionError => e
                raise TypeError,
                      "scene_collection_name" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>CreateSceneCollection</tt> request.
    # @see Mixins::Request#create_scene_collection
    # @see Responses::CreateSceneCollection
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#createscenecollection
    class CreateSceneCollection < Request
      TYPE = "CreateSceneCollection"
      def initialize(args)
        super(
          {
            "sceneCollectionName" =>
              begin
                TypeConverters::String.as_json(args[:scene_collection_name])
              rescue ConversionError => e
                raise TypeError,
                      "scene_collection_name" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>GetProfileList</tt> request.
    # @see Mixins::Request#get_profile_list
    # @see Responses::GetProfileList
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getprofilelist
    class GetProfileList < Request
      TYPE = "GetProfileList"
      def initialize(args)
        super({})
      end
    end
    # An instance of <tt>SetCurrentProfile</tt> request.
    # @see Mixins::Request#set_current_profile
    # @see Responses::SetCurrentProfile
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setcurrentprofile
    class SetCurrentProfile < Request
      TYPE = "SetCurrentProfile"
      def initialize(args)
        super(
          {
            "profileName" =>
              begin
                TypeConverters::String.as_json(args[:profile_name])
              rescue ConversionError => e
                raise TypeError,
                      "profile_name" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>CreateProfile</tt> request.
    # @see Mixins::Request#create_profile
    # @see Responses::CreateProfile
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#createprofile
    class CreateProfile < Request
      TYPE = "CreateProfile"
      def initialize(args)
        super(
          {
            "profileName" =>
              begin
                TypeConverters::String.as_json(args[:profile_name])
              rescue ConversionError => e
                raise TypeError,
                      "profile_name" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>RemoveProfile</tt> request.
    # @see Mixins::Request#remove_profile
    # @see Responses::RemoveProfile
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#removeprofile
    class RemoveProfile < Request
      TYPE = "RemoveProfile"
      def initialize(args)
        super(
          {
            "profileName" =>
              begin
                TypeConverters::String.as_json(args[:profile_name])
              rescue ConversionError => e
                raise TypeError,
                      "profile_name" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>GetProfileParameter</tt> request.
    # @see Mixins::Request#get_profile_parameter
    # @see Responses::GetProfileParameter
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getprofileparameter
    class GetProfileParameter < Request
      TYPE = "GetProfileParameter"
      def initialize(args)
        super(
          {
            "parameterCategory" =>
              begin
                TypeConverters::String.as_json(args[:parameter_category])
              rescue ConversionError => e
                raise TypeError,
                      "parameter_category" \
                        ": #{e.message}"
              end,
            "parameterName" =>
              begin
                TypeConverters::String.as_json(args[:parameter_name])
              rescue ConversionError => e
                raise TypeError,
                      "parameter_name" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>SetProfileParameter</tt> request.
    # @see Mixins::Request#set_profile_parameter
    # @see Responses::SetProfileParameter
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setprofileparameter
    class SetProfileParameter < Request
      TYPE = "SetProfileParameter"
      def initialize(args)
        super(
          {
            "parameterCategory" =>
              begin
                TypeConverters::String.as_json(args[:parameter_category])
              rescue ConversionError => e
                raise TypeError,
                      "parameter_category" \
                        ": #{e.message}"
              end,
            "parameterName" =>
              begin
                TypeConverters::String.as_json(args[:parameter_name])
              rescue ConversionError => e
                raise TypeError,
                      "parameter_name" \
                        ": #{e.message}"
              end,
            "parameterValue" =>
              begin
                TypeConverters::String.as_json(args[:parameter_value])
              rescue ConversionError => e
                raise TypeError,
                      "parameter_value" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>GetVideoSettings</tt> request.
    # @see Mixins::Request#get_video_settings
    # @see Responses::GetVideoSettings
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getvideosettings
    class GetVideoSettings < Request
      TYPE = "GetVideoSettings"
      def initialize(args)
        super({})
      end
    end
    # An instance of <tt>SetVideoSettings</tt> request.
    # @see Mixins::Request#set_video_settings
    # @see Responses::SetVideoSettings
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setvideosettings
    class SetVideoSettings < Request
      TYPE = "SetVideoSettings"
      def initialize(args)
        super(
          {
            "fpsNumerator" =>
              begin
                TypeConverters::Optional[TypeConverters::Number].as_json(
                  args[:fps_numerator]
                )
              rescue ConversionError => e
                raise TypeError,
                      "fps_numerator" \
                        ": #{e.message}"
              end,
            "fpsDenominator" =>
              begin
                TypeConverters::Optional[TypeConverters::Number].as_json(
                  args[:fps_denominator]
                )
              rescue ConversionError => e
                raise TypeError,
                      "fps_denominator" \
                        ": #{e.message}"
              end,
            "baseWidth" =>
              begin
                TypeConverters::Optional[TypeConverters::Number].as_json(
                  args[:base_width]
                )
              rescue ConversionError => e
                raise TypeError,
                      "base_width" \
                        ": #{e.message}"
              end,
            "baseHeight" =>
              begin
                TypeConverters::Optional[TypeConverters::Number].as_json(
                  args[:base_height]
                )
              rescue ConversionError => e
                raise TypeError,
                      "base_height" \
                        ": #{e.message}"
              end,
            "outputWidth" =>
              begin
                TypeConverters::Optional[TypeConverters::Number].as_json(
                  args[:output_width]
                )
              rescue ConversionError => e
                raise TypeError,
                      "output_width" \
                        ": #{e.message}"
              end,
            "outputHeight" =>
              begin
                TypeConverters::Optional[TypeConverters::Number].as_json(
                  args[:output_height]
                )
              rescue ConversionError => e
                raise TypeError,
                      "output_height" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>GetStreamServiceSettings</tt> request.
    # @see Mixins::Request#get_stream_service_settings
    # @see Responses::GetStreamServiceSettings
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getstreamservicesettings
    class GetStreamServiceSettings < Request
      TYPE = "GetStreamServiceSettings"
      def initialize(args)
        super({})
      end
    end
    # An instance of <tt>SetStreamServiceSettings</tt> request.
    # @see Mixins::Request#set_stream_service_settings
    # @see Responses::SetStreamServiceSettings
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setstreamservicesettings
    class SetStreamServiceSettings < Request
      TYPE = "SetStreamServiceSettings"
      def initialize(args)
        super(
          {
            "streamServiceType" =>
              begin
                TypeConverters::String.as_json(args[:stream_service_type])
              rescue ConversionError => e
                raise TypeError,
                      "stream_service_type" \
                        ": #{e.message}"
              end,
            "streamServiceSettings" =>
              begin
                TypeConverters::Object.as_json(args[:stream_service_settings])
              rescue ConversionError => e
                raise TypeError,
                      "stream_service_settings" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>GetRecordDirectory</tt> request.
    # @see Mixins::Request#get_record_directory
    # @see Responses::GetRecordDirectory
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getrecorddirectory
    class GetRecordDirectory < Request
      TYPE = "GetRecordDirectory"
      def initialize(args)
        super({})
      end
    end
    # An instance of <tt>GetSourceFilterList</tt> request.
    # @see Mixins::Request#get_source_filter_list
    # @see Responses::GetSourceFilterList
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getsourcefilterlist
    class GetSourceFilterList < Request
      TYPE = "GetSourceFilterList"
      def initialize(args)
        super(
          {
            "sourceName" =>
              begin
                TypeConverters::String.as_json(args[:source_name])
              rescue ConversionError => e
                raise TypeError,
                      "source_name" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>GetSourceFilterDefaultSettings</tt> request.
    # @see Mixins::Request#get_source_filter_default_settings
    # @see Responses::GetSourceFilterDefaultSettings
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getsourcefilterdefaultsettings
    class GetSourceFilterDefaultSettings < Request
      TYPE = "GetSourceFilterDefaultSettings"
      def initialize(args)
        super(
          {
            "filterKind" =>
              begin
                TypeConverters::String.as_json(args[:filter_kind])
              rescue ConversionError => e
                raise TypeError,
                      "filter_kind" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>CreateSourceFilter</tt> request.
    # @see Mixins::Request#create_source_filter
    # @see Responses::CreateSourceFilter
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#createsourcefilter
    class CreateSourceFilter < Request
      TYPE = "CreateSourceFilter"
      def initialize(args)
        super(
          {
            "sourceName" =>
              begin
                TypeConverters::String.as_json(args[:source_name])
              rescue ConversionError => e
                raise TypeError,
                      "source_name" \
                        ": #{e.message}"
              end,
            "filterName" =>
              begin
                TypeConverters::String.as_json(args[:filter_name])
              rescue ConversionError => e
                raise TypeError,
                      "filter_name" \
                        ": #{e.message}"
              end,
            "filterKind" =>
              begin
                TypeConverters::String.as_json(args[:filter_kind])
              rescue ConversionError => e
                raise TypeError,
                      "filter_kind" \
                        ": #{e.message}"
              end,
            "filterSettings" =>
              begin
                TypeConverters::Optional[TypeConverters::Object].as_json(
                  args[:filter_settings]
                )
              rescue ConversionError => e
                raise TypeError,
                      "filter_settings" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>RemoveSourceFilter</tt> request.
    # @see Mixins::Request#remove_source_filter
    # @see Responses::RemoveSourceFilter
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#removesourcefilter
    class RemoveSourceFilter < Request
      TYPE = "RemoveSourceFilter"
      def initialize(args)
        super(
          {
            "sourceName" =>
              begin
                TypeConverters::String.as_json(args[:source_name])
              rescue ConversionError => e
                raise TypeError,
                      "source_name" \
                        ": #{e.message}"
              end,
            "filterName" =>
              begin
                TypeConverters::String.as_json(args[:filter_name])
              rescue ConversionError => e
                raise TypeError,
                      "filter_name" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>SetSourceFilterName</tt> request.
    # @see Mixins::Request#set_source_filter_name
    # @see Responses::SetSourceFilterName
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setsourcefiltername
    class SetSourceFilterName < Request
      TYPE = "SetSourceFilterName"
      def initialize(args)
        super(
          {
            "sourceName" =>
              begin
                TypeConverters::String.as_json(args[:source_name])
              rescue ConversionError => e
                raise TypeError,
                      "source_name" \
                        ": #{e.message}"
              end,
            "filterName" =>
              begin
                TypeConverters::String.as_json(args[:filter_name])
              rescue ConversionError => e
                raise TypeError,
                      "filter_name" \
                        ": #{e.message}"
              end,
            "newFilterName" =>
              begin
                TypeConverters::String.as_json(args[:new_filter_name])
              rescue ConversionError => e
                raise TypeError,
                      "new_filter_name" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>GetSourceFilter</tt> request.
    # @see Mixins::Request#get_source_filter
    # @see Responses::GetSourceFilter
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getsourcefilter
    class GetSourceFilter < Request
      TYPE = "GetSourceFilter"
      def initialize(args)
        super(
          {
            "sourceName" =>
              begin
                TypeConverters::String.as_json(args[:source_name])
              rescue ConversionError => e
                raise TypeError,
                      "source_name" \
                        ": #{e.message}"
              end,
            "filterName" =>
              begin
                TypeConverters::String.as_json(args[:filter_name])
              rescue ConversionError => e
                raise TypeError,
                      "filter_name" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>SetSourceFilterIndex</tt> request.
    # @see Mixins::Request#set_source_filter_index
    # @see Responses::SetSourceFilterIndex
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setsourcefilterindex
    class SetSourceFilterIndex < Request
      TYPE = "SetSourceFilterIndex"
      def initialize(args)
        super(
          {
            "sourceName" =>
              begin
                TypeConverters::String.as_json(args[:source_name])
              rescue ConversionError => e
                raise TypeError,
                      "source_name" \
                        ": #{e.message}"
              end,
            "filterName" =>
              begin
                TypeConverters::String.as_json(args[:filter_name])
              rescue ConversionError => e
                raise TypeError,
                      "filter_name" \
                        ": #{e.message}"
              end,
            "filterIndex" =>
              begin
                TypeConverters::Number.as_json(args[:filter_index])
              rescue ConversionError => e
                raise TypeError,
                      "filter_index" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>SetSourceFilterSettings</tt> request.
    # @see Mixins::Request#set_source_filter_settings
    # @see Responses::SetSourceFilterSettings
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setsourcefiltersettings
    class SetSourceFilterSettings < Request
      TYPE = "SetSourceFilterSettings"
      def initialize(args)
        super(
          {
            "sourceName" =>
              begin
                TypeConverters::String.as_json(args[:source_name])
              rescue ConversionError => e
                raise TypeError,
                      "source_name" \
                        ": #{e.message}"
              end,
            "filterName" =>
              begin
                TypeConverters::String.as_json(args[:filter_name])
              rescue ConversionError => e
                raise TypeError,
                      "filter_name" \
                        ": #{e.message}"
              end,
            "filterSettings" =>
              begin
                TypeConverters::Object.as_json(args[:filter_settings])
              rescue ConversionError => e
                raise TypeError,
                      "filter_settings" \
                        ": #{e.message}"
              end,
            "overlay" =>
              begin
                TypeConverters::Optional[TypeConverters::Boolean].as_json(
                  args[:overlay]
                )
              rescue ConversionError => e
                raise TypeError,
                      "overlay" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>SetSourceFilterEnabled</tt> request.
    # @see Mixins::Request#set_source_filter_enabled
    # @see Responses::SetSourceFilterEnabled
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setsourcefilterenabled
    class SetSourceFilterEnabled < Request
      TYPE = "SetSourceFilterEnabled"
      def initialize(args)
        super(
          {
            "sourceName" =>
              begin
                TypeConverters::String.as_json(args[:source_name])
              rescue ConversionError => e
                raise TypeError,
                      "source_name" \
                        ": #{e.message}"
              end,
            "filterName" =>
              begin
                TypeConverters::String.as_json(args[:filter_name])
              rescue ConversionError => e
                raise TypeError,
                      "filter_name" \
                        ": #{e.message}"
              end,
            "filterEnabled" =>
              begin
                TypeConverters::Boolean.as_json(args[:filter_enabled])
              rescue ConversionError => e
                raise TypeError,
                      "filter_enabled" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>GetVersion</tt> request.
    # @see Mixins::Request#get_version
    # @see Responses::GetVersion
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getversion
    class GetVersion < Request
      TYPE = "GetVersion"
      def initialize(args)
        super({})
      end
    end
    # An instance of <tt>GetStats</tt> request.
    # @see Mixins::Request#get_stats
    # @see Responses::GetStats
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getstats
    class GetStats < Request
      TYPE = "GetStats"
      def initialize(args)
        super({})
      end
    end
    # An instance of <tt>BroadcastCustomEvent</tt> request.
    # @see Mixins::Request#broadcast_custom_event
    # @see Responses::BroadcastCustomEvent
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#broadcastcustomevent
    class BroadcastCustomEvent < Request
      TYPE = "BroadcastCustomEvent"
      def initialize(args)
        super(
          {
            "eventData" =>
              begin
                TypeConverters::Object.as_json(args[:event_data])
              rescue ConversionError => e
                raise TypeError,
                      "event_data" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>CallVendorRequest</tt> request.
    # @see Mixins::Request#call_vendor_request
    # @see Responses::CallVendorRequest
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#callvendorrequest
    class CallVendorRequest < Request
      TYPE = "CallVendorRequest"
      def initialize(args)
        super(
          {
            "vendorName" =>
              begin
                TypeConverters::String.as_json(args[:vendor_name])
              rescue ConversionError => e
                raise TypeError,
                      "vendor_name" \
                        ": #{e.message}"
              end,
            "requestType" =>
              begin
                TypeConverters::String.as_json(args[:request_type])
              rescue ConversionError => e
                raise TypeError,
                      "request_type" \
                        ": #{e.message}"
              end,
            "requestData" =>
              begin
                TypeConverters::Optional[TypeConverters::Object].as_json(
                  args[:request_data]
                )
              rescue ConversionError => e
                raise TypeError,
                      "request_data" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>GetHotkeyList</tt> request.
    # @see Mixins::Request#get_hotkey_list
    # @see Responses::GetHotkeyList
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#gethotkeylist
    class GetHotkeyList < Request
      TYPE = "GetHotkeyList"
      def initialize(args)
        super({})
      end
    end
    # An instance of <tt>TriggerHotkeyByName</tt> request.
    # @see Mixins::Request#trigger_hotkey_by_name
    # @see Responses::TriggerHotkeyByName
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#triggerhotkeybyname
    class TriggerHotkeyByName < Request
      TYPE = "TriggerHotkeyByName"
      def initialize(args)
        super(
          {
            "hotkeyName" =>
              begin
                TypeConverters::String.as_json(args[:hotkey_name])
              rescue ConversionError => e
                raise TypeError,
                      "hotkey_name" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>TriggerHotkeyByKeySequence</tt> request.
    # @see Mixins::Request#trigger_hotkey_by_key_sequence
    # @see Responses::TriggerHotkeyByKeySequence
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#triggerhotkeybykeysequence
    class TriggerHotkeyByKeySequence < Request
      TYPE = "TriggerHotkeyByKeySequence"
      def initialize(args)
        super(
          {
            "keyId" =>
              begin
                TypeConverters::Optional[TypeConverters::String].as_json(
                  args[:key_id]
                )
              rescue ConversionError => e
                raise TypeError,
                      "key_id" \
                        ": #{e.message}"
              end,
            "keyModifiers" =>
              begin
                TypeConverters::Optional[
                  TypeConverters::Object[
                    {
                      shift: {
                        type: TypeConverters::Optional[TypeConverters::Boolean],
                        wire_name: "shift"
                      },
                      control: {
                        type: TypeConverters::Optional[TypeConverters::Boolean],
                        wire_name: "control"
                      },
                      alt: {
                        type: TypeConverters::Optional[TypeConverters::Boolean],
                        wire_name: "alt"
                      },
                      command: {
                        type: TypeConverters::Optional[TypeConverters::Boolean],
                        wire_name: "command"
                      }
                    }
                  ]
                ].as_json(args[:key_modifiers])
              rescue ConversionError => e
                raise TypeError,
                      "key_modifiers" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>Sleep</tt> request.
    # @see Mixins::Request#sleep
    # @see Responses::Sleep
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#sleep
    class Sleep < Request
      TYPE = "Sleep"
      def initialize(args)
        super(
          {
            "sleepMillis" =>
              begin
                TypeConverters::Number.as_json(args[:sleep_millis])
              rescue ConversionError => e
                raise TypeError,
                      "sleep_millis" \
                        ": #{e.message}"
              end,
            "sleepFrames" =>
              begin
                TypeConverters::Number.as_json(args[:sleep_frames])
              rescue ConversionError => e
                raise TypeError,
                      "sleep_frames" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>GetInputList</tt> request.
    # @see Mixins::Request#get_input_list
    # @see Responses::GetInputList
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getinputlist
    class GetInputList < Request
      TYPE = "GetInputList"
      def initialize(args)
        super(
          {
            "inputKind" =>
              begin
                TypeConverters::Optional[TypeConverters::String].as_json(
                  args[:input_kind]
                )
              rescue ConversionError => e
                raise TypeError,
                      "input_kind" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>GetInputKindList</tt> request.
    # @see Mixins::Request#get_input_kind_list
    # @see Responses::GetInputKindList
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getinputkindlist
    class GetInputKindList < Request
      TYPE = "GetInputKindList"
      def initialize(args)
        super(
          {
            "unversioned" =>
              begin
                TypeConverters::Optional[TypeConverters::Boolean].as_json(
                  args[:unversioned]
                )
              rescue ConversionError => e
                raise TypeError,
                      "unversioned" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>GetSpecialInputs</tt> request.
    # @see Mixins::Request#get_special_inputs
    # @see Responses::GetSpecialInputs
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getspecialinputs
    class GetSpecialInputs < Request
      TYPE = "GetSpecialInputs"
      def initialize(args)
        super({})
      end
    end
    # An instance of <tt>CreateInput</tt> request.
    # @see Mixins::Request#create_input
    # @see Responses::CreateInput
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#createinput
    class CreateInput < Request
      TYPE = "CreateInput"
      def initialize(args)
        super(
          {
            "sceneName" =>
              begin
                TypeConverters::String.as_json(args[:scene_name])
              rescue ConversionError => e
                raise TypeError,
                      "scene_name" \
                        ": #{e.message}"
              end,
            "inputName" =>
              begin
                TypeConverters::String.as_json(args[:input_name])
              rescue ConversionError => e
                raise TypeError,
                      "input_name" \
                        ": #{e.message}"
              end,
            "inputKind" =>
              begin
                TypeConverters::String.as_json(args[:input_kind])
              rescue ConversionError => e
                raise TypeError,
                      "input_kind" \
                        ": #{e.message}"
              end,
            "inputSettings" =>
              begin
                TypeConverters::Optional[TypeConverters::Object].as_json(
                  args[:input_settings]
                )
              rescue ConversionError => e
                raise TypeError,
                      "input_settings" \
                        ": #{e.message}"
              end,
            "sceneItemEnabled" =>
              begin
                TypeConverters::Optional[TypeConverters::Boolean].as_json(
                  args[:scene_item_enabled]
                )
              rescue ConversionError => e
                raise TypeError,
                      "scene_item_enabled" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>RemoveInput</tt> request.
    # @see Mixins::Request#remove_input
    # @see Responses::RemoveInput
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#removeinput
    class RemoveInput < Request
      TYPE = "RemoveInput"
      def initialize(args)
        super(
          {
            "inputName" =>
              begin
                TypeConverters::String.as_json(args[:input_name])
              rescue ConversionError => e
                raise TypeError,
                      "input_name" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>SetInputName</tt> request.
    # @see Mixins::Request#set_input_name
    # @see Responses::SetInputName
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setinputname
    class SetInputName < Request
      TYPE = "SetInputName"
      def initialize(args)
        super(
          {
            "inputName" =>
              begin
                TypeConverters::String.as_json(args[:input_name])
              rescue ConversionError => e
                raise TypeError,
                      "input_name" \
                        ": #{e.message}"
              end,
            "newInputName" =>
              begin
                TypeConverters::String.as_json(args[:new_input_name])
              rescue ConversionError => e
                raise TypeError,
                      "new_input_name" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>GetInputDefaultSettings</tt> request.
    # @see Mixins::Request#get_input_default_settings
    # @see Responses::GetInputDefaultSettings
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getinputdefaultsettings
    class GetInputDefaultSettings < Request
      TYPE = "GetInputDefaultSettings"
      def initialize(args)
        super(
          {
            "inputKind" =>
              begin
                TypeConverters::String.as_json(args[:input_kind])
              rescue ConversionError => e
                raise TypeError,
                      "input_kind" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>GetInputSettings</tt> request.
    # @see Mixins::Request#get_input_settings
    # @see Responses::GetInputSettings
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getinputsettings
    class GetInputSettings < Request
      TYPE = "GetInputSettings"
      def initialize(args)
        super(
          {
            "inputName" =>
              begin
                TypeConverters::String.as_json(args[:input_name])
              rescue ConversionError => e
                raise TypeError,
                      "input_name" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>SetInputSettings</tt> request.
    # @see Mixins::Request#set_input_settings
    # @see Responses::SetInputSettings
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setinputsettings
    class SetInputSettings < Request
      TYPE = "SetInputSettings"
      def initialize(args)
        super(
          {
            "inputName" =>
              begin
                TypeConverters::String.as_json(args[:input_name])
              rescue ConversionError => e
                raise TypeError,
                      "input_name" \
                        ": #{e.message}"
              end,
            "inputSettings" =>
              begin
                TypeConverters::Object.as_json(args[:input_settings])
              rescue ConversionError => e
                raise TypeError,
                      "input_settings" \
                        ": #{e.message}"
              end,
            "overlay" =>
              begin
                TypeConverters::Optional[TypeConverters::Boolean].as_json(
                  args[:overlay]
                )
              rescue ConversionError => e
                raise TypeError,
                      "overlay" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>GetInputMute</tt> request.
    # @see Mixins::Request#get_input_mute
    # @see Responses::GetInputMute
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getinputmute
    class GetInputMute < Request
      TYPE = "GetInputMute"
      def initialize(args)
        super(
          {
            "inputName" =>
              begin
                TypeConverters::String.as_json(args[:input_name])
              rescue ConversionError => e
                raise TypeError,
                      "input_name" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>SetInputMute</tt> request.
    # @see Mixins::Request#set_input_mute
    # @see Responses::SetInputMute
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setinputmute
    class SetInputMute < Request
      TYPE = "SetInputMute"
      def initialize(args)
        super(
          {
            "inputName" =>
              begin
                TypeConverters::String.as_json(args[:input_name])
              rescue ConversionError => e
                raise TypeError,
                      "input_name" \
                        ": #{e.message}"
              end,
            "inputMuted" =>
              begin
                TypeConverters::Boolean.as_json(args[:input_muted])
              rescue ConversionError => e
                raise TypeError,
                      "input_muted" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>ToggleInputMute</tt> request.
    # @see Mixins::Request#toggle_input_mute
    # @see Responses::ToggleInputMute
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#toggleinputmute
    class ToggleInputMute < Request
      TYPE = "ToggleInputMute"
      def initialize(args)
        super(
          {
            "inputName" =>
              begin
                TypeConverters::String.as_json(args[:input_name])
              rescue ConversionError => e
                raise TypeError,
                      "input_name" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>GetInputVolume</tt> request.
    # @see Mixins::Request#get_input_volume
    # @see Responses::GetInputVolume
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getinputvolume
    class GetInputVolume < Request
      TYPE = "GetInputVolume"
      def initialize(args)
        super(
          {
            "inputName" =>
              begin
                TypeConverters::String.as_json(args[:input_name])
              rescue ConversionError => e
                raise TypeError,
                      "input_name" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>SetInputVolume</tt> request.
    # @see Mixins::Request#set_input_volume
    # @see Responses::SetInputVolume
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setinputvolume
    class SetInputVolume < Request
      TYPE = "SetInputVolume"
      def initialize(args)
        super(
          {
            "inputName" =>
              begin
                TypeConverters::String.as_json(args[:input_name])
              rescue ConversionError => e
                raise TypeError,
                      "input_name" \
                        ": #{e.message}"
              end,
            "inputVolumeMul" =>
              begin
                TypeConverters::Optional[TypeConverters::Number].as_json(
                  args[:input_volume_mul]
                )
              rescue ConversionError => e
                raise TypeError,
                      "input_volume_mul" \
                        ": #{e.message}"
              end,
            "inputVolumeDb" =>
              begin
                TypeConverters::Optional[TypeConverters::Number].as_json(
                  args[:input_volume_db]
                )
              rescue ConversionError => e
                raise TypeError,
                      "input_volume_db" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>GetInputAudioBalance</tt> request.
    # @see Mixins::Request#get_input_audio_balance
    # @see Responses::GetInputAudioBalance
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getinputaudiobalance
    class GetInputAudioBalance < Request
      TYPE = "GetInputAudioBalance"
      def initialize(args)
        super(
          {
            "inputName" =>
              begin
                TypeConverters::String.as_json(args[:input_name])
              rescue ConversionError => e
                raise TypeError,
                      "input_name" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>SetInputAudioBalance</tt> request.
    # @see Mixins::Request#set_input_audio_balance
    # @see Responses::SetInputAudioBalance
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setinputaudiobalance
    class SetInputAudioBalance < Request
      TYPE = "SetInputAudioBalance"
      def initialize(args)
        super(
          {
            "inputName" =>
              begin
                TypeConverters::String.as_json(args[:input_name])
              rescue ConversionError => e
                raise TypeError,
                      "input_name" \
                        ": #{e.message}"
              end,
            "inputAudioBalance" =>
              begin
                TypeConverters::Number.as_json(args[:input_audio_balance])
              rescue ConversionError => e
                raise TypeError,
                      "input_audio_balance" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>GetInputAudioSyncOffset</tt> request.
    # @see Mixins::Request#get_input_audio_sync_offset
    # @see Responses::GetInputAudioSyncOffset
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getinputaudiosyncoffset
    class GetInputAudioSyncOffset < Request
      TYPE = "GetInputAudioSyncOffset"
      def initialize(args)
        super(
          {
            "inputName" =>
              begin
                TypeConverters::String.as_json(args[:input_name])
              rescue ConversionError => e
                raise TypeError,
                      "input_name" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>SetInputAudioSyncOffset</tt> request.
    # @see Mixins::Request#set_input_audio_sync_offset
    # @see Responses::SetInputAudioSyncOffset
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setinputaudiosyncoffset
    class SetInputAudioSyncOffset < Request
      TYPE = "SetInputAudioSyncOffset"
      def initialize(args)
        super(
          {
            "inputName" =>
              begin
                TypeConverters::String.as_json(args[:input_name])
              rescue ConversionError => e
                raise TypeError,
                      "input_name" \
                        ": #{e.message}"
              end,
            "inputAudioSyncOffset" =>
              begin
                TypeConverters::Number.as_json(args[:input_audio_sync_offset])
              rescue ConversionError => e
                raise TypeError,
                      "input_audio_sync_offset" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>GetInputAudioMonitorType</tt> request.
    # @see Mixins::Request#get_input_audio_monitor_type
    # @see Responses::GetInputAudioMonitorType
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getinputaudiomonitortype
    class GetInputAudioMonitorType < Request
      TYPE = "GetInputAudioMonitorType"
      def initialize(args)
        super(
          {
            "inputName" =>
              begin
                TypeConverters::String.as_json(args[:input_name])
              rescue ConversionError => e
                raise TypeError,
                      "input_name" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>SetInputAudioMonitorType</tt> request.
    # @see Mixins::Request#set_input_audio_monitor_type
    # @see Responses::SetInputAudioMonitorType
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setinputaudiomonitortype
    class SetInputAudioMonitorType < Request
      TYPE = "SetInputAudioMonitorType"
      def initialize(args)
        super(
          {
            "inputName" =>
              begin
                TypeConverters::String.as_json(args[:input_name])
              rescue ConversionError => e
                raise TypeError,
                      "input_name" \
                        ": #{e.message}"
              end,
            "monitorType" =>
              begin
                TypeConverters::String.as_json(args[:monitor_type])
              rescue ConversionError => e
                raise TypeError,
                      "monitor_type" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>GetInputAudioTracks</tt> request.
    # @see Mixins::Request#get_input_audio_tracks
    # @see Responses::GetInputAudioTracks
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getinputaudiotracks
    class GetInputAudioTracks < Request
      TYPE = "GetInputAudioTracks"
      def initialize(args)
        super(
          {
            "inputName" =>
              begin
                TypeConverters::String.as_json(args[:input_name])
              rescue ConversionError => e
                raise TypeError,
                      "input_name" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>SetInputAudioTracks</tt> request.
    # @see Mixins::Request#set_input_audio_tracks
    # @see Responses::SetInputAudioTracks
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setinputaudiotracks
    class SetInputAudioTracks < Request
      TYPE = "SetInputAudioTracks"
      def initialize(args)
        super(
          {
            "inputName" =>
              begin
                TypeConverters::String.as_json(args[:input_name])
              rescue ConversionError => e
                raise TypeError,
                      "input_name" \
                        ": #{e.message}"
              end,
            "inputAudioTracks" =>
              begin
                TypeConverters::Object.as_json(args[:input_audio_tracks])
              rescue ConversionError => e
                raise TypeError,
                      "input_audio_tracks" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>GetInputPropertiesListPropertyItems</tt> request.
    # @see Mixins::Request#get_input_properties_list_property_items
    # @see Responses::GetInputPropertiesListPropertyItems
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getinputpropertieslistpropertyitems
    class GetInputPropertiesListPropertyItems < Request
      TYPE = "GetInputPropertiesListPropertyItems"
      def initialize(args)
        super(
          {
            "inputName" =>
              begin
                TypeConverters::String.as_json(args[:input_name])
              rescue ConversionError => e
                raise TypeError,
                      "input_name" \
                        ": #{e.message}"
              end,
            "propertyName" =>
              begin
                TypeConverters::String.as_json(args[:property_name])
              rescue ConversionError => e
                raise TypeError,
                      "property_name" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>PressInputPropertiesButton</tt> request.
    # @see Mixins::Request#press_input_properties_button
    # @see Responses::PressInputPropertiesButton
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#pressinputpropertiesbutton
    class PressInputPropertiesButton < Request
      TYPE = "PressInputPropertiesButton"
      def initialize(args)
        super(
          {
            "inputName" =>
              begin
                TypeConverters::String.as_json(args[:input_name])
              rescue ConversionError => e
                raise TypeError,
                      "input_name" \
                        ": #{e.message}"
              end,
            "propertyName" =>
              begin
                TypeConverters::String.as_json(args[:property_name])
              rescue ConversionError => e
                raise TypeError,
                      "property_name" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>GetMediaInputStatus</tt> request.
    # @see Mixins::Request#get_media_input_status
    # @see Responses::GetMediaInputStatus
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getmediainputstatus
    class GetMediaInputStatus < Request
      TYPE = "GetMediaInputStatus"
      def initialize(args)
        super(
          {
            "inputName" =>
              begin
                TypeConverters::String.as_json(args[:input_name])
              rescue ConversionError => e
                raise TypeError,
                      "input_name" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>SetMediaInputCursor</tt> request.
    # @see Mixins::Request#set_media_input_cursor
    # @see Responses::SetMediaInputCursor
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setmediainputcursor
    class SetMediaInputCursor < Request
      TYPE = "SetMediaInputCursor"
      def initialize(args)
        super(
          {
            "inputName" =>
              begin
                TypeConverters::String.as_json(args[:input_name])
              rescue ConversionError => e
                raise TypeError,
                      "input_name" \
                        ": #{e.message}"
              end,
            "mediaCursor" =>
              begin
                TypeConverters::Number.as_json(args[:media_cursor])
              rescue ConversionError => e
                raise TypeError,
                      "media_cursor" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>OffsetMediaInputCursor</tt> request.
    # @see Mixins::Request#offset_media_input_cursor
    # @see Responses::OffsetMediaInputCursor
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#offsetmediainputcursor
    class OffsetMediaInputCursor < Request
      TYPE = "OffsetMediaInputCursor"
      def initialize(args)
        super(
          {
            "inputName" =>
              begin
                TypeConverters::String.as_json(args[:input_name])
              rescue ConversionError => e
                raise TypeError,
                      "input_name" \
                        ": #{e.message}"
              end,
            "mediaCursorOffset" =>
              begin
                TypeConverters::Number.as_json(args[:media_cursor_offset])
              rescue ConversionError => e
                raise TypeError,
                      "media_cursor_offset" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>TriggerMediaInputAction</tt> request.
    # @see Mixins::Request#trigger_media_input_action
    # @see Responses::TriggerMediaInputAction
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#triggermediainputaction
    class TriggerMediaInputAction < Request
      TYPE = "TriggerMediaInputAction"
      def initialize(args)
        super(
          {
            "inputName" =>
              begin
                TypeConverters::String.as_json(args[:input_name])
              rescue ConversionError => e
                raise TypeError,
                      "input_name" \
                        ": #{e.message}"
              end,
            "mediaAction" =>
              begin
                TypeConverters::String.as_json(args[:media_action])
              rescue ConversionError => e
                raise TypeError,
                      "media_action" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>GetVirtualCamStatus</tt> request.
    # @see Mixins::Request#get_virtual_cam_status
    # @see Responses::GetVirtualCamStatus
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getvirtualcamstatus
    class GetVirtualCamStatus < Request
      TYPE = "GetVirtualCamStatus"
      def initialize(args)
        super({})
      end
    end
    # An instance of <tt>ToggleVirtualCam</tt> request.
    # @see Mixins::Request#toggle_virtual_cam
    # @see Responses::ToggleVirtualCam
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#togglevirtualcam
    class ToggleVirtualCam < Request
      TYPE = "ToggleVirtualCam"
      def initialize(args)
        super({})
      end
    end
    # An instance of <tt>StartVirtualCam</tt> request.
    # @see Mixins::Request#start_virtual_cam
    # @see Responses::StartVirtualCam
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#startvirtualcam
    class StartVirtualCam < Request
      TYPE = "StartVirtualCam"
      def initialize(args)
        super({})
      end
    end
    # An instance of <tt>StopVirtualCam</tt> request.
    # @see Mixins::Request#stop_virtual_cam
    # @see Responses::StopVirtualCam
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#stopvirtualcam
    class StopVirtualCam < Request
      TYPE = "StopVirtualCam"
      def initialize(args)
        super({})
      end
    end
    # An instance of <tt>GetReplayBufferStatus</tt> request.
    # @see Mixins::Request#get_replay_buffer_status
    # @see Responses::GetReplayBufferStatus
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getreplaybufferstatus
    class GetReplayBufferStatus < Request
      TYPE = "GetReplayBufferStatus"
      def initialize(args)
        super({})
      end
    end
    # An instance of <tt>ToggleReplayBuffer</tt> request.
    # @see Mixins::Request#toggle_replay_buffer
    # @see Responses::ToggleReplayBuffer
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#togglereplaybuffer
    class ToggleReplayBuffer < Request
      TYPE = "ToggleReplayBuffer"
      def initialize(args)
        super({})
      end
    end
    # An instance of <tt>StartReplayBuffer</tt> request.
    # @see Mixins::Request#start_replay_buffer
    # @see Responses::StartReplayBuffer
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#startreplaybuffer
    class StartReplayBuffer < Request
      TYPE = "StartReplayBuffer"
      def initialize(args)
        super({})
      end
    end
    # An instance of <tt>StopReplayBuffer</tt> request.
    # @see Mixins::Request#stop_replay_buffer
    # @see Responses::StopReplayBuffer
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#stopreplaybuffer
    class StopReplayBuffer < Request
      TYPE = "StopReplayBuffer"
      def initialize(args)
        super({})
      end
    end
    # An instance of <tt>SaveReplayBuffer</tt> request.
    # @see Mixins::Request#save_replay_buffer
    # @see Responses::SaveReplayBuffer
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#savereplaybuffer
    class SaveReplayBuffer < Request
      TYPE = "SaveReplayBuffer"
      def initialize(args)
        super({})
      end
    end
    # An instance of <tt>GetLastReplayBufferReplay</tt> request.
    # @see Mixins::Request#get_last_replay_buffer_replay
    # @see Responses::GetLastReplayBufferReplay
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getlastreplaybufferreplay
    class GetLastReplayBufferReplay < Request
      TYPE = "GetLastReplayBufferReplay"
      def initialize(args)
        super({})
      end
    end
    # An instance of <tt>GetRecordStatus</tt> request.
    # @see Mixins::Request#get_record_status
    # @see Responses::GetRecordStatus
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getrecordstatus
    class GetRecordStatus < Request
      TYPE = "GetRecordStatus"
      def initialize(args)
        super({})
      end
    end
    # An instance of <tt>ToggleRecord</tt> request.
    # @see Mixins::Request#toggle_record
    # @see Responses::ToggleRecord
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#togglerecord
    class ToggleRecord < Request
      TYPE = "ToggleRecord"
      def initialize(args)
        super({})
      end
    end
    # An instance of <tt>StartRecord</tt> request.
    # @see Mixins::Request#start_record
    # @see Responses::StartRecord
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#startrecord
    class StartRecord < Request
      TYPE = "StartRecord"
      def initialize(args)
        super({})
      end
    end
    # An instance of <tt>StopRecord</tt> request.
    # @see Mixins::Request#stop_record
    # @see Responses::StopRecord
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#stoprecord
    class StopRecord < Request
      TYPE = "StopRecord"
      def initialize(args)
        super({})
      end
    end
    # An instance of <tt>ToggleRecordPause</tt> request.
    # @see Mixins::Request#toggle_record_pause
    # @see Responses::ToggleRecordPause
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#togglerecordpause
    class ToggleRecordPause < Request
      TYPE = "ToggleRecordPause"
      def initialize(args)
        super({})
      end
    end
    # An instance of <tt>PauseRecord</tt> request.
    # @see Mixins::Request#pause_record
    # @see Responses::PauseRecord
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#pauserecord
    class PauseRecord < Request
      TYPE = "PauseRecord"
      def initialize(args)
        super({})
      end
    end
    # An instance of <tt>ResumeRecord</tt> request.
    # @see Mixins::Request#resume_record
    # @see Responses::ResumeRecord
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#resumerecord
    class ResumeRecord < Request
      TYPE = "ResumeRecord"
      def initialize(args)
        super({})
      end
    end
    # An instance of <tt>GetSceneItemList</tt> request.
    # @see Mixins::Request#get_scene_item_list
    # @see Responses::GetSceneItemList
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getsceneitemlist
    class GetSceneItemList < Request
      TYPE = "GetSceneItemList"
      def initialize(args)
        super(
          {
            "sceneName" =>
              begin
                TypeConverters::String.as_json(args[:scene_name])
              rescue ConversionError => e
                raise TypeError,
                      "scene_name" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>GetGroupItemList</tt> request.
    # @see Mixins::Request#get_group_item_list
    # @see Responses::GetGroupItemList
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getgroupitemlist
    class GetGroupItemList < Request
      TYPE = "GetGroupItemList"
      def initialize(args)
        super(
          {
            "sceneName" =>
              begin
                TypeConverters::String.as_json(args[:scene_name])
              rescue ConversionError => e
                raise TypeError,
                      "scene_name" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>GetSceneItemId</tt> request.
    # @see Mixins::Request#get_scene_item_id
    # @see Responses::GetSceneItemId
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getsceneitemid
    class GetSceneItemId < Request
      TYPE = "GetSceneItemId"
      def initialize(args)
        super(
          {
            "sceneName" =>
              begin
                TypeConverters::String.as_json(args[:scene_name])
              rescue ConversionError => e
                raise TypeError,
                      "scene_name" \
                        ": #{e.message}"
              end,
            "sourceName" =>
              begin
                TypeConverters::String.as_json(args[:source_name])
              rescue ConversionError => e
                raise TypeError,
                      "source_name" \
                        ": #{e.message}"
              end,
            "searchOffset" =>
              begin
                TypeConverters::Optional[TypeConverters::Number].as_json(
                  args[:search_offset]
                )
              rescue ConversionError => e
                raise TypeError,
                      "search_offset" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>CreateSceneItem</tt> request.
    # @see Mixins::Request#create_scene_item
    # @see Responses::CreateSceneItem
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#createsceneitem
    class CreateSceneItem < Request
      TYPE = "CreateSceneItem"
      def initialize(args)
        super(
          {
            "sceneName" =>
              begin
                TypeConverters::String.as_json(args[:scene_name])
              rescue ConversionError => e
                raise TypeError,
                      "scene_name" \
                        ": #{e.message}"
              end,
            "sourceName" =>
              begin
                TypeConverters::String.as_json(args[:source_name])
              rescue ConversionError => e
                raise TypeError,
                      "source_name" \
                        ": #{e.message}"
              end,
            "sceneItemEnabled" =>
              begin
                TypeConverters::Optional[TypeConverters::Boolean].as_json(
                  args[:scene_item_enabled]
                )
              rescue ConversionError => e
                raise TypeError,
                      "scene_item_enabled" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>RemoveSceneItem</tt> request.
    # @see Mixins::Request#remove_scene_item
    # @see Responses::RemoveSceneItem
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#removesceneitem
    class RemoveSceneItem < Request
      TYPE = "RemoveSceneItem"
      def initialize(args)
        super(
          {
            "sceneName" =>
              begin
                TypeConverters::String.as_json(args[:scene_name])
              rescue ConversionError => e
                raise TypeError,
                      "scene_name" \
                        ": #{e.message}"
              end,
            "sceneItemId" =>
              begin
                TypeConverters::Number.as_json(args[:scene_item_id])
              rescue ConversionError => e
                raise TypeError,
                      "scene_item_id" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>DuplicateSceneItem</tt> request.
    # @see Mixins::Request#duplicate_scene_item
    # @see Responses::DuplicateSceneItem
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#duplicatesceneitem
    class DuplicateSceneItem < Request
      TYPE = "DuplicateSceneItem"
      def initialize(args)
        super(
          {
            "sceneName" =>
              begin
                TypeConverters::String.as_json(args[:scene_name])
              rescue ConversionError => e
                raise TypeError,
                      "scene_name" \
                        ": #{e.message}"
              end,
            "sceneItemId" =>
              begin
                TypeConverters::Number.as_json(args[:scene_item_id])
              rescue ConversionError => e
                raise TypeError,
                      "scene_item_id" \
                        ": #{e.message}"
              end,
            "destinationSceneName" =>
              begin
                TypeConverters::Optional[TypeConverters::String].as_json(
                  args[:destination_scene_name]
                )
              rescue ConversionError => e
                raise TypeError,
                      "destination_scene_name" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>GetSceneItemTransform</tt> request.
    # @see Mixins::Request#get_scene_item_transform
    # @see Responses::GetSceneItemTransform
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getsceneitemtransform
    class GetSceneItemTransform < Request
      TYPE = "GetSceneItemTransform"
      def initialize(args)
        super(
          {
            "sceneName" =>
              begin
                TypeConverters::String.as_json(args[:scene_name])
              rescue ConversionError => e
                raise TypeError,
                      "scene_name" \
                        ": #{e.message}"
              end,
            "sceneItemId" =>
              begin
                TypeConverters::Number.as_json(args[:scene_item_id])
              rescue ConversionError => e
                raise TypeError,
                      "scene_item_id" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>SetSceneItemTransform</tt> request.
    # @see Mixins::Request#set_scene_item_transform
    # @see Responses::SetSceneItemTransform
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setsceneitemtransform
    class SetSceneItemTransform < Request
      TYPE = "SetSceneItemTransform"
      def initialize(args)
        super(
          {
            "sceneName" =>
              begin
                TypeConverters::String.as_json(args[:scene_name])
              rescue ConversionError => e
                raise TypeError,
                      "scene_name" \
                        ": #{e.message}"
              end,
            "sceneItemId" =>
              begin
                TypeConverters::Number.as_json(args[:scene_item_id])
              rescue ConversionError => e
                raise TypeError,
                      "scene_item_id" \
                        ": #{e.message}"
              end,
            "sceneItemTransform" =>
              begin
                TypeConverters::Object.as_json(args[:scene_item_transform])
              rescue ConversionError => e
                raise TypeError,
                      "scene_item_transform" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>GetSceneItemEnabled</tt> request.
    # @see Mixins::Request#get_scene_item_enabled
    # @see Responses::GetSceneItemEnabled
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getsceneitemenabled
    class GetSceneItemEnabled < Request
      TYPE = "GetSceneItemEnabled"
      def initialize(args)
        super(
          {
            "sceneName" =>
              begin
                TypeConverters::String.as_json(args[:scene_name])
              rescue ConversionError => e
                raise TypeError,
                      "scene_name" \
                        ": #{e.message}"
              end,
            "sceneItemId" =>
              begin
                TypeConverters::Number.as_json(args[:scene_item_id])
              rescue ConversionError => e
                raise TypeError,
                      "scene_item_id" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>SetSceneItemEnabled</tt> request.
    # @see Mixins::Request#set_scene_item_enabled
    # @see Responses::SetSceneItemEnabled
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setsceneitemenabled
    class SetSceneItemEnabled < Request
      TYPE = "SetSceneItemEnabled"
      def initialize(args)
        super(
          {
            "sceneName" =>
              begin
                TypeConverters::String.as_json(args[:scene_name])
              rescue ConversionError => e
                raise TypeError,
                      "scene_name" \
                        ": #{e.message}"
              end,
            "sceneItemId" =>
              begin
                TypeConverters::Number.as_json(args[:scene_item_id])
              rescue ConversionError => e
                raise TypeError,
                      "scene_item_id" \
                        ": #{e.message}"
              end,
            "sceneItemEnabled" =>
              begin
                TypeConverters::Boolean.as_json(args[:scene_item_enabled])
              rescue ConversionError => e
                raise TypeError,
                      "scene_item_enabled" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>GetSceneItemLocked</tt> request.
    # @see Mixins::Request#get_scene_item_locked
    # @see Responses::GetSceneItemLocked
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getsceneitemlocked
    class GetSceneItemLocked < Request
      TYPE = "GetSceneItemLocked"
      def initialize(args)
        super(
          {
            "sceneName" =>
              begin
                TypeConverters::String.as_json(args[:scene_name])
              rescue ConversionError => e
                raise TypeError,
                      "scene_name" \
                        ": #{e.message}"
              end,
            "sceneItemId" =>
              begin
                TypeConverters::Number.as_json(args[:scene_item_id])
              rescue ConversionError => e
                raise TypeError,
                      "scene_item_id" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>SetSceneItemLocked</tt> request.
    # @see Mixins::Request#set_scene_item_locked
    # @see Responses::SetSceneItemLocked
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setsceneitemlocked
    class SetSceneItemLocked < Request
      TYPE = "SetSceneItemLocked"
      def initialize(args)
        super(
          {
            "sceneName" =>
              begin
                TypeConverters::String.as_json(args[:scene_name])
              rescue ConversionError => e
                raise TypeError,
                      "scene_name" \
                        ": #{e.message}"
              end,
            "sceneItemId" =>
              begin
                TypeConverters::Number.as_json(args[:scene_item_id])
              rescue ConversionError => e
                raise TypeError,
                      "scene_item_id" \
                        ": #{e.message}"
              end,
            "sceneItemLocked" =>
              begin
                TypeConverters::Boolean.as_json(args[:scene_item_locked])
              rescue ConversionError => e
                raise TypeError,
                      "scene_item_locked" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>GetSceneItemIndex</tt> request.
    # @see Mixins::Request#get_scene_item_index
    # @see Responses::GetSceneItemIndex
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getsceneitemindex
    class GetSceneItemIndex < Request
      TYPE = "GetSceneItemIndex"
      def initialize(args)
        super(
          {
            "sceneName" =>
              begin
                TypeConverters::String.as_json(args[:scene_name])
              rescue ConversionError => e
                raise TypeError,
                      "scene_name" \
                        ": #{e.message}"
              end,
            "sceneItemId" =>
              begin
                TypeConverters::Number.as_json(args[:scene_item_id])
              rescue ConversionError => e
                raise TypeError,
                      "scene_item_id" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>SetSceneItemIndex</tt> request.
    # @see Mixins::Request#set_scene_item_index
    # @see Responses::SetSceneItemIndex
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setsceneitemindex
    class SetSceneItemIndex < Request
      TYPE = "SetSceneItemIndex"
      def initialize(args)
        super(
          {
            "sceneName" =>
              begin
                TypeConverters::String.as_json(args[:scene_name])
              rescue ConversionError => e
                raise TypeError,
                      "scene_name" \
                        ": #{e.message}"
              end,
            "sceneItemId" =>
              begin
                TypeConverters::Number.as_json(args[:scene_item_id])
              rescue ConversionError => e
                raise TypeError,
                      "scene_item_id" \
                        ": #{e.message}"
              end,
            "sceneItemIndex" =>
              begin
                TypeConverters::Number.as_json(args[:scene_item_index])
              rescue ConversionError => e
                raise TypeError,
                      "scene_item_index" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>GetSceneItemBlendMode</tt> request.
    # @see Mixins::Request#get_scene_item_blend_mode
    # @see Responses::GetSceneItemBlendMode
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getsceneitemblendmode
    class GetSceneItemBlendMode < Request
      TYPE = "GetSceneItemBlendMode"
      def initialize(args)
        super(
          {
            "sceneName" =>
              begin
                TypeConverters::String.as_json(args[:scene_name])
              rescue ConversionError => e
                raise TypeError,
                      "scene_name" \
                        ": #{e.message}"
              end,
            "sceneItemId" =>
              begin
                TypeConverters::Number.as_json(args[:scene_item_id])
              rescue ConversionError => e
                raise TypeError,
                      "scene_item_id" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>SetSceneItemBlendMode</tt> request.
    # @see Mixins::Request#set_scene_item_blend_mode
    # @see Responses::SetSceneItemBlendMode
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setsceneitemblendmode
    class SetSceneItemBlendMode < Request
      TYPE = "SetSceneItemBlendMode"
      def initialize(args)
        super(
          {
            "sceneName" =>
              begin
                TypeConverters::String.as_json(args[:scene_name])
              rescue ConversionError => e
                raise TypeError,
                      "scene_name" \
                        ": #{e.message}"
              end,
            "sceneItemId" =>
              begin
                TypeConverters::Number.as_json(args[:scene_item_id])
              rescue ConversionError => e
                raise TypeError,
                      "scene_item_id" \
                        ": #{e.message}"
              end,
            "sceneItemBlendMode" =>
              begin
                TypeConverters::String.as_json(args[:scene_item_blend_mode])
              rescue ConversionError => e
                raise TypeError,
                      "scene_item_blend_mode" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>GetSceneList</tt> request.
    # @see Mixins::Request#get_scene_list
    # @see Responses::GetSceneList
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getscenelist
    class GetSceneList < Request
      TYPE = "GetSceneList"
      def initialize(args)
        super({})
      end
    end
    # An instance of <tt>GetGroupList</tt> request.
    # @see Mixins::Request#get_group_list
    # @see Responses::GetGroupList
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getgrouplist
    class GetGroupList < Request
      TYPE = "GetGroupList"
      def initialize(args)
        super({})
      end
    end
    # An instance of <tt>GetCurrentProgramScene</tt> request.
    # @see Mixins::Request#get_current_program_scene
    # @see Responses::GetCurrentProgramScene
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getcurrentprogramscene
    class GetCurrentProgramScene < Request
      TYPE = "GetCurrentProgramScene"
      def initialize(args)
        super({})
      end
    end
    # An instance of <tt>SetCurrentProgramScene</tt> request.
    # @see Mixins::Request#set_current_program_scene
    # @see Responses::SetCurrentProgramScene
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setcurrentprogramscene
    class SetCurrentProgramScene < Request
      TYPE = "SetCurrentProgramScene"
      def initialize(args)
        super(
          {
            "sceneName" =>
              begin
                TypeConverters::String.as_json(args[:scene_name])
              rescue ConversionError => e
                raise TypeError,
                      "scene_name" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>GetCurrentPreviewScene</tt> request.
    # @see Mixins::Request#get_current_preview_scene
    # @see Responses::GetCurrentPreviewScene
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getcurrentpreviewscene
    class GetCurrentPreviewScene < Request
      TYPE = "GetCurrentPreviewScene"
      def initialize(args)
        super({})
      end
    end
    # An instance of <tt>SetCurrentPreviewScene</tt> request.
    # @see Mixins::Request#set_current_preview_scene
    # @see Responses::SetCurrentPreviewScene
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setcurrentpreviewscene
    class SetCurrentPreviewScene < Request
      TYPE = "SetCurrentPreviewScene"
      def initialize(args)
        super(
          {
            "sceneName" =>
              begin
                TypeConverters::String.as_json(args[:scene_name])
              rescue ConversionError => e
                raise TypeError,
                      "scene_name" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>CreateScene</tt> request.
    # @see Mixins::Request#create_scene
    # @see Responses::CreateScene
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#createscene
    class CreateScene < Request
      TYPE = "CreateScene"
      def initialize(args)
        super(
          {
            "sceneName" =>
              begin
                TypeConverters::String.as_json(args[:scene_name])
              rescue ConversionError => e
                raise TypeError,
                      "scene_name" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>RemoveScene</tt> request.
    # @see Mixins::Request#remove_scene
    # @see Responses::RemoveScene
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#removescene
    class RemoveScene < Request
      TYPE = "RemoveScene"
      def initialize(args)
        super(
          {
            "sceneName" =>
              begin
                TypeConverters::String.as_json(args[:scene_name])
              rescue ConversionError => e
                raise TypeError,
                      "scene_name" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>SetSceneName</tt> request.
    # @see Mixins::Request#set_scene_name
    # @see Responses::SetSceneName
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setscenename
    class SetSceneName < Request
      TYPE = "SetSceneName"
      def initialize(args)
        super(
          {
            "sceneName" =>
              begin
                TypeConverters::String.as_json(args[:scene_name])
              rescue ConversionError => e
                raise TypeError,
                      "scene_name" \
                        ": #{e.message}"
              end,
            "newSceneName" =>
              begin
                TypeConverters::String.as_json(args[:new_scene_name])
              rescue ConversionError => e
                raise TypeError,
                      "new_scene_name" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>GetSceneSceneTransitionOverride</tt> request.
    # @see Mixins::Request#get_scene_scene_transition_override
    # @see Responses::GetSceneSceneTransitionOverride
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getscenescenetransitionoverride
    class GetSceneSceneTransitionOverride < Request
      TYPE = "GetSceneSceneTransitionOverride"
      def initialize(args)
        super(
          {
            "sceneName" =>
              begin
                TypeConverters::String.as_json(args[:scene_name])
              rescue ConversionError => e
                raise TypeError,
                      "scene_name" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>SetSceneSceneTransitionOverride</tt> request.
    # @see Mixins::Request#set_scene_scene_transition_override
    # @see Responses::SetSceneSceneTransitionOverride
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setscenescenetransitionoverride
    class SetSceneSceneTransitionOverride < Request
      TYPE = "SetSceneSceneTransitionOverride"
      def initialize(args)
        super(
          {
            "sceneName" =>
              begin
                TypeConverters::String.as_json(args[:scene_name])
              rescue ConversionError => e
                raise TypeError,
                      "scene_name" \
                        ": #{e.message}"
              end,
            "transitionName" =>
              begin
                TypeConverters::Optional[TypeConverters::String].as_json(
                  args[:transition_name]
                )
              rescue ConversionError => e
                raise TypeError,
                      "transition_name" \
                        ": #{e.message}"
              end,
            "transitionDuration" =>
              begin
                TypeConverters::Optional[TypeConverters::Number].as_json(
                  args[:transition_duration]
                )
              rescue ConversionError => e
                raise TypeError,
                      "transition_duration" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>GetSourceActive</tt> request.
    # @see Mixins::Request#get_source_active
    # @see Responses::GetSourceActive
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getsourceactive
    class GetSourceActive < Request
      TYPE = "GetSourceActive"
      def initialize(args)
        super(
          {
            "sourceName" =>
              begin
                TypeConverters::String.as_json(args[:source_name])
              rescue ConversionError => e
                raise TypeError,
                      "source_name" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>GetSourceScreenshot</tt> request.
    # @see Mixins::Request#get_source_screenshot
    # @see Responses::GetSourceScreenshot
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getsourcescreenshot
    class GetSourceScreenshot < Request
      TYPE = "GetSourceScreenshot"
      def initialize(args)
        super(
          {
            "sourceName" =>
              begin
                TypeConverters::String.as_json(args[:source_name])
              rescue ConversionError => e
                raise TypeError,
                      "source_name" \
                        ": #{e.message}"
              end,
            "imageFormat" =>
              begin
                TypeConverters::String.as_json(args[:image_format])
              rescue ConversionError => e
                raise TypeError,
                      "image_format" \
                        ": #{e.message}"
              end,
            "imageWidth" =>
              begin
                TypeConverters::Optional[TypeConverters::Number].as_json(
                  args[:image_width]
                )
              rescue ConversionError => e
                raise TypeError,
                      "image_width" \
                        ": #{e.message}"
              end,
            "imageHeight" =>
              begin
                TypeConverters::Optional[TypeConverters::Number].as_json(
                  args[:image_height]
                )
              rescue ConversionError => e
                raise TypeError,
                      "image_height" \
                        ": #{e.message}"
              end,
            "imageCompressionQuality" =>
              begin
                TypeConverters::Optional[TypeConverters::Number].as_json(
                  args[:image_compression_quality]
                )
              rescue ConversionError => e
                raise TypeError,
                      "image_compression_quality" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>SaveSourceScreenshot</tt> request.
    # @see Mixins::Request#save_source_screenshot
    # @see Responses::SaveSourceScreenshot
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#savesourcescreenshot
    class SaveSourceScreenshot < Request
      TYPE = "SaveSourceScreenshot"
      def initialize(args)
        super(
          {
            "sourceName" =>
              begin
                TypeConverters::String.as_json(args[:source_name])
              rescue ConversionError => e
                raise TypeError,
                      "source_name" \
                        ": #{e.message}"
              end,
            "imageFormat" =>
              begin
                TypeConverters::String.as_json(args[:image_format])
              rescue ConversionError => e
                raise TypeError,
                      "image_format" \
                        ": #{e.message}"
              end,
            "imageFilePath" =>
              begin
                TypeConverters::String.as_json(args[:image_file_path])
              rescue ConversionError => e
                raise TypeError,
                      "image_file_path" \
                        ": #{e.message}"
              end,
            "imageWidth" =>
              begin
                TypeConverters::Optional[TypeConverters::Number].as_json(
                  args[:image_width]
                )
              rescue ConversionError => e
                raise TypeError,
                      "image_width" \
                        ": #{e.message}"
              end,
            "imageHeight" =>
              begin
                TypeConverters::Optional[TypeConverters::Number].as_json(
                  args[:image_height]
                )
              rescue ConversionError => e
                raise TypeError,
                      "image_height" \
                        ": #{e.message}"
              end,
            "imageCompressionQuality" =>
              begin
                TypeConverters::Optional[TypeConverters::Number].as_json(
                  args[:image_compression_quality]
                )
              rescue ConversionError => e
                raise TypeError,
                      "image_compression_quality" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>GetStreamStatus</tt> request.
    # @see Mixins::Request#get_stream_status
    # @see Responses::GetStreamStatus
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getstreamstatus
    class GetStreamStatus < Request
      TYPE = "GetStreamStatus"
      def initialize(args)
        super({})
      end
    end
    # An instance of <tt>ToggleStream</tt> request.
    # @see Mixins::Request#toggle_stream
    # @see Responses::ToggleStream
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#togglestream
    class ToggleStream < Request
      TYPE = "ToggleStream"
      def initialize(args)
        super({})
      end
    end
    # An instance of <tt>StartStream</tt> request.
    # @see Mixins::Request#start_stream
    # @see Responses::StartStream
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#startstream
    class StartStream < Request
      TYPE = "StartStream"
      def initialize(args)
        super({})
      end
    end
    # An instance of <tt>StopStream</tt> request.
    # @see Mixins::Request#stop_stream
    # @see Responses::StopStream
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#stopstream
    class StopStream < Request
      TYPE = "StopStream"
      def initialize(args)
        super({})
      end
    end
    # An instance of <tt>SendStreamCaption</tt> request.
    # @see Mixins::Request#send_stream_caption
    # @see Responses::SendStreamCaption
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#sendstreamcaption
    class SendStreamCaption < Request
      TYPE = "SendStreamCaption"
      def initialize(args)
        super(
          {
            "captionText" =>
              begin
                TypeConverters::String.as_json(args[:caption_text])
              rescue ConversionError => e
                raise TypeError,
                      "caption_text" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>GetTransitionKindList</tt> request.
    # @see Mixins::Request#get_transition_kind_list
    # @see Responses::GetTransitionKindList
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#gettransitionkindlist
    class GetTransitionKindList < Request
      TYPE = "GetTransitionKindList"
      def initialize(args)
        super({})
      end
    end
    # An instance of <tt>GetSceneTransitionList</tt> request.
    # @see Mixins::Request#get_scene_transition_list
    # @see Responses::GetSceneTransitionList
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getscenetransitionlist
    class GetSceneTransitionList < Request
      TYPE = "GetSceneTransitionList"
      def initialize(args)
        super({})
      end
    end
    # An instance of <tt>GetCurrentSceneTransition</tt> request.
    # @see Mixins::Request#get_current_scene_transition
    # @see Responses::GetCurrentSceneTransition
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getcurrentscenetransition
    class GetCurrentSceneTransition < Request
      TYPE = "GetCurrentSceneTransition"
      def initialize(args)
        super({})
      end
    end
    # An instance of <tt>SetCurrentSceneTransition</tt> request.
    # @see Mixins::Request#set_current_scene_transition
    # @see Responses::SetCurrentSceneTransition
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setcurrentscenetransition
    class SetCurrentSceneTransition < Request
      TYPE = "SetCurrentSceneTransition"
      def initialize(args)
        super(
          {
            "transitionName" =>
              begin
                TypeConverters::String.as_json(args[:transition_name])
              rescue ConversionError => e
                raise TypeError,
                      "transition_name" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>SetCurrentSceneTransitionDuration</tt> request.
    # @see Mixins::Request#set_current_scene_transition_duration
    # @see Responses::SetCurrentSceneTransitionDuration
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setcurrentscenetransitionduration
    class SetCurrentSceneTransitionDuration < Request
      TYPE = "SetCurrentSceneTransitionDuration"
      def initialize(args)
        super(
          {
            "transitionDuration" =>
              begin
                TypeConverters::Number.as_json(args[:transition_duration])
              rescue ConversionError => e
                raise TypeError,
                      "transition_duration" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>SetCurrentSceneTransitionSettings</tt> request.
    # @see Mixins::Request#set_current_scene_transition_settings
    # @see Responses::SetCurrentSceneTransitionSettings
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setcurrentscenetransitionsettings
    class SetCurrentSceneTransitionSettings < Request
      TYPE = "SetCurrentSceneTransitionSettings"
      def initialize(args)
        super(
          {
            "transitionSettings" =>
              begin
                TypeConverters::Object.as_json(args[:transition_settings])
              rescue ConversionError => e
                raise TypeError,
                      "transition_settings" \
                        ": #{e.message}"
              end,
            "overlay" =>
              begin
                TypeConverters::Optional[TypeConverters::Boolean].as_json(
                  args[:overlay]
                )
              rescue ConversionError => e
                raise TypeError,
                      "overlay" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>GetCurrentSceneTransitionCursor</tt> request.
    # @see Mixins::Request#get_current_scene_transition_cursor
    # @see Responses::GetCurrentSceneTransitionCursor
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getcurrentscenetransitioncursor
    class GetCurrentSceneTransitionCursor < Request
      TYPE = "GetCurrentSceneTransitionCursor"
      def initialize(args)
        super({})
      end
    end
    # An instance of <tt>TriggerStudioModeTransition</tt> request.
    # @see Mixins::Request#trigger_studio_mode_transition
    # @see Responses::TriggerStudioModeTransition
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#triggerstudiomodetransition
    class TriggerStudioModeTransition < Request
      TYPE = "TriggerStudioModeTransition"
      def initialize(args)
        super({})
      end
    end
    # An instance of <tt>SetTBarPosition</tt> request.
    # @see Mixins::Request#set_t_bar_position
    # @see Responses::SetTBarPosition
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#settbarposition
    class SetTBarPosition < Request
      TYPE = "SetTBarPosition"
      def initialize(args)
        super(
          {
            "position" =>
              begin
                TypeConverters::Number.as_json(args[:position])
              rescue ConversionError => e
                raise TypeError,
                      "position" \
                        ": #{e.message}"
              end,
            "release" =>
              begin
                TypeConverters::Optional[TypeConverters::Boolean].as_json(
                  args[:release]
                )
              rescue ConversionError => e
                raise TypeError,
                      "release" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>GetStudioModeEnabled</tt> request.
    # @see Mixins::Request#get_studio_mode_enabled
    # @see Responses::GetStudioModeEnabled
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getstudiomodeenabled
    class GetStudioModeEnabled < Request
      TYPE = "GetStudioModeEnabled"
      def initialize(args)
        super({})
      end
    end
    # An instance of <tt>SetStudioModeEnabled</tt> request.
    # @see Mixins::Request#set_studio_mode_enabled
    # @see Responses::SetStudioModeEnabled
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setstudiomodeenabled
    class SetStudioModeEnabled < Request
      TYPE = "SetStudioModeEnabled"
      def initialize(args)
        super(
          {
            "studioModeEnabled" =>
              begin
                TypeConverters::Boolean.as_json(args[:studio_mode_enabled])
              rescue ConversionError => e
                raise TypeError,
                      "studio_mode_enabled" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>OpenInputPropertiesDialog</tt> request.
    # @see Mixins::Request#open_input_properties_dialog
    # @see Responses::OpenInputPropertiesDialog
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#openinputpropertiesdialog
    class OpenInputPropertiesDialog < Request
      TYPE = "OpenInputPropertiesDialog"
      def initialize(args)
        super(
          {
            "inputName" =>
              begin
                TypeConverters::String.as_json(args[:input_name])
              rescue ConversionError => e
                raise TypeError,
                      "input_name" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>OpenInputFiltersDialog</tt> request.
    # @see Mixins::Request#open_input_filters_dialog
    # @see Responses::OpenInputFiltersDialog
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#openinputfiltersdialog
    class OpenInputFiltersDialog < Request
      TYPE = "OpenInputFiltersDialog"
      def initialize(args)
        super(
          {
            "inputName" =>
              begin
                TypeConverters::String.as_json(args[:input_name])
              rescue ConversionError => e
                raise TypeError,
                      "input_name" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>OpenInputInteractDialog</tt> request.
    # @see Mixins::Request#open_input_interact_dialog
    # @see Responses::OpenInputInteractDialog
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#openinputinteractdialog
    class OpenInputInteractDialog < Request
      TYPE = "OpenInputInteractDialog"
      def initialize(args)
        super(
          {
            "inputName" =>
              begin
                TypeConverters::String.as_json(args[:input_name])
              rescue ConversionError => e
                raise TypeError,
                      "input_name" \
                        ": #{e.message}"
              end
          }
        )
      end
    end
    # An instance of <tt>GetMonitorList</tt> request.
    # @see Mixins::Request#get_monitor_list
    # @see Responses::GetMonitorList
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getmonitorlist
    class GetMonitorList < Request
      TYPE = "GetMonitorList"
      def initialize(args)
        super({})
      end
    end
  end # module Requests
end
