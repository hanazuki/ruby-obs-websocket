# frozen_string_literal: false

module OBS::WS::Protocol
  module Events
    # An instance of <tt>CurrentSceneCollectionChanging</tt> event.
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#currentscenecollectionchanging
    class CurrentSceneCollectionChanging < Event
      TYPE = "CurrentSceneCollectionChanging"
      CLASSES_BY_TYPE[TYPE] = self
      # @!attribute [r] scene_collection_name
      # @return [String] <tt>sceneCollectionName</tt> field
      def scene_collection_name
        get_field("sceneCollectionName", TypeConverters::String)
      end
    end
    # An instance of <tt>CurrentSceneCollectionChanged</tt> event.
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#currentscenecollectionchanged
    class CurrentSceneCollectionChanged < Event
      TYPE = "CurrentSceneCollectionChanged"
      CLASSES_BY_TYPE[TYPE] = self
      # @!attribute [r] scene_collection_name
      # @return [String] <tt>sceneCollectionName</tt> field
      def scene_collection_name
        get_field("sceneCollectionName", TypeConverters::String)
      end
    end
    # An instance of <tt>SceneCollectionListChanged</tt> event.
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#scenecollectionlistchanged
    class SceneCollectionListChanged < Event
      TYPE = "SceneCollectionListChanged"
      CLASSES_BY_TYPE[TYPE] = self
      # @!attribute [r] scene_collections
      # @return [Array<String>] <tt>sceneCollections</tt> field
      def scene_collections
        get_field(
          "sceneCollections",
          TypeConverters::Array[TypeConverters::String]
        )
      end
    end
    # An instance of <tt>CurrentProfileChanging</tt> event.
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#currentprofilechanging
    class CurrentProfileChanging < Event
      TYPE = "CurrentProfileChanging"
      CLASSES_BY_TYPE[TYPE] = self
      # @!attribute [r] profile_name
      # @return [String] <tt>profileName</tt> field
      def profile_name
        get_field("profileName", TypeConverters::String)
      end
    end
    # An instance of <tt>CurrentProfileChanged</tt> event.
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#currentprofilechanged
    class CurrentProfileChanged < Event
      TYPE = "CurrentProfileChanged"
      CLASSES_BY_TYPE[TYPE] = self
      # @!attribute [r] profile_name
      # @return [String] <tt>profileName</tt> field
      def profile_name
        get_field("profileName", TypeConverters::String)
      end
    end
    # An instance of <tt>ProfileListChanged</tt> event.
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#profilelistchanged
    class ProfileListChanged < Event
      TYPE = "ProfileListChanged"
      CLASSES_BY_TYPE[TYPE] = self
      # @!attribute [r] profiles
      # @return [Array<String>] <tt>profiles</tt> field
      def profiles
        get_field("profiles", TypeConverters::Array[TypeConverters::String])
      end
    end
    # An instance of <tt>SourceFilterListReindexed</tt> event.
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#sourcefilterlistreindexed
    class SourceFilterListReindexed < Event
      TYPE = "SourceFilterListReindexed"
      CLASSES_BY_TYPE[TYPE] = self
      # @!attribute [r] source_name
      # @return [String] <tt>sourceName</tt> field
      def source_name
        get_field("sourceName", TypeConverters::String)
      end
      # @!attribute [r] filters
      # @return [Array<Hash>] <tt>filters</tt> field
      def filters
        get_field("filters", TypeConverters::Array[TypeConverters::Object])
      end
    end
    # An instance of <tt>SourceFilterCreated</tt> event.
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#sourcefiltercreated
    class SourceFilterCreated < Event
      TYPE = "SourceFilterCreated"
      CLASSES_BY_TYPE[TYPE] = self
      # @!attribute [r] source_name
      # @return [String] <tt>sourceName</tt> field
      def source_name
        get_field("sourceName", TypeConverters::String)
      end
      # @!attribute [r] filter_name
      # @return [String] <tt>filterName</tt> field
      def filter_name
        get_field("filterName", TypeConverters::String)
      end
      # @!attribute [r] filter_kind
      # @return [String] <tt>filterKind</tt> field
      def filter_kind
        get_field("filterKind", TypeConverters::String)
      end
      # @!attribute [r] filter_index
      # @return [Numeric] <tt>filterIndex</tt> field
      def filter_index
        get_field("filterIndex", TypeConverters::Number)
      end
      # @!attribute [r] filter_settings
      # @return [Hash] <tt>filterSettings</tt> field
      def filter_settings
        get_field("filterSettings", TypeConverters::Object)
      end
      # @!attribute [r] default_filter_settings
      # @return [Hash] <tt>defaultFilterSettings</tt> field
      def default_filter_settings
        get_field("defaultFilterSettings", TypeConverters::Object)
      end
    end
    # An instance of <tt>SourceFilterRemoved</tt> event.
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#sourcefilterremoved
    class SourceFilterRemoved < Event
      TYPE = "SourceFilterRemoved"
      CLASSES_BY_TYPE[TYPE] = self
      # @!attribute [r] source_name
      # @return [String] <tt>sourceName</tt> field
      def source_name
        get_field("sourceName", TypeConverters::String)
      end
      # @!attribute [r] filter_name
      # @return [String] <tt>filterName</tt> field
      def filter_name
        get_field("filterName", TypeConverters::String)
      end
    end
    # An instance of <tt>SourceFilterNameChanged</tt> event.
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#sourcefilternamechanged
    class SourceFilterNameChanged < Event
      TYPE = "SourceFilterNameChanged"
      CLASSES_BY_TYPE[TYPE] = self
      # @!attribute [r] source_name
      # @return [String] <tt>sourceName</tt> field
      def source_name
        get_field("sourceName", TypeConverters::String)
      end
      # @!attribute [r] old_filter_name
      # @return [String] <tt>oldFilterName</tt> field
      def old_filter_name
        get_field("oldFilterName", TypeConverters::String)
      end
      # @!attribute [r] filter_name
      # @return [String] <tt>filterName</tt> field
      def filter_name
        get_field("filterName", TypeConverters::String)
      end
    end
    # An instance of <tt>SourceFilterEnableStateChanged</tt> event.
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#sourcefilterenablestatechanged
    class SourceFilterEnableStateChanged < Event
      TYPE = "SourceFilterEnableStateChanged"
      CLASSES_BY_TYPE[TYPE] = self
      # @!attribute [r] source_name
      # @return [String] <tt>sourceName</tt> field
      def source_name
        get_field("sourceName", TypeConverters::String)
      end
      # @!attribute [r] filter_name
      # @return [String] <tt>filterName</tt> field
      def filter_name
        get_field("filterName", TypeConverters::String)
      end
      # @!attribute [r] filter_enabled
      # @return [Boolean] <tt>filterEnabled</tt> field
      def filter_enabled
        get_field("filterEnabled", TypeConverters::Boolean)
      end
    end
    # An instance of <tt>ExitStarted</tt> event.
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#exitstarted
    class ExitStarted < Event
      TYPE = "ExitStarted"
      CLASSES_BY_TYPE[TYPE] = self
    end
    # An instance of <tt>InputCreated</tt> event.
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#inputcreated
    class InputCreated < Event
      TYPE = "InputCreated"
      CLASSES_BY_TYPE[TYPE] = self
      # @!attribute [r] input_name
      # @return [String] <tt>inputName</tt> field
      def input_name
        get_field("inputName", TypeConverters::String)
      end
      # @!attribute [r] input_kind
      # @return [String] <tt>inputKind</tt> field
      def input_kind
        get_field("inputKind", TypeConverters::String)
      end
      # @!attribute [r] unversioned_input_kind
      # @return [String] <tt>unversionedInputKind</tt> field
      def unversioned_input_kind
        get_field("unversionedInputKind", TypeConverters::String)
      end
      # @!attribute [r] input_settings
      # @return [Hash] <tt>inputSettings</tt> field
      def input_settings
        get_field("inputSettings", TypeConverters::Object)
      end
      # @!attribute [r] default_input_settings
      # @return [Hash] <tt>defaultInputSettings</tt> field
      def default_input_settings
        get_field("defaultInputSettings", TypeConverters::Object)
      end
    end
    # An instance of <tt>InputRemoved</tt> event.
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#inputremoved
    class InputRemoved < Event
      TYPE = "InputRemoved"
      CLASSES_BY_TYPE[TYPE] = self
      # @!attribute [r] input_name
      # @return [String] <tt>inputName</tt> field
      def input_name
        get_field("inputName", TypeConverters::String)
      end
    end
    # An instance of <tt>InputNameChanged</tt> event.
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#inputnamechanged
    class InputNameChanged < Event
      TYPE = "InputNameChanged"
      CLASSES_BY_TYPE[TYPE] = self
      # @!attribute [r] old_input_name
      # @return [String] <tt>oldInputName</tt> field
      def old_input_name
        get_field("oldInputName", TypeConverters::String)
      end
      # @!attribute [r] input_name
      # @return [String] <tt>inputName</tt> field
      def input_name
        get_field("inputName", TypeConverters::String)
      end
    end
    # An instance of <tt>InputActiveStateChanged</tt> event.
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#inputactivestatechanged
    class InputActiveStateChanged < Event
      TYPE = "InputActiveStateChanged"
      CLASSES_BY_TYPE[TYPE] = self
      # @!attribute [r] input_name
      # @return [String] <tt>inputName</tt> field
      def input_name
        get_field("inputName", TypeConverters::String)
      end
      # @!attribute [r] video_active
      # @return [Boolean] <tt>videoActive</tt> field
      def video_active
        get_field("videoActive", TypeConverters::Boolean)
      end
    end
    # An instance of <tt>InputShowStateChanged</tt> event.
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#inputshowstatechanged
    class InputShowStateChanged < Event
      TYPE = "InputShowStateChanged"
      CLASSES_BY_TYPE[TYPE] = self
      # @!attribute [r] input_name
      # @return [String] <tt>inputName</tt> field
      def input_name
        get_field("inputName", TypeConverters::String)
      end
      # @!attribute [r] video_showing
      # @return [Boolean] <tt>videoShowing</tt> field
      def video_showing
        get_field("videoShowing", TypeConverters::Boolean)
      end
    end
    # An instance of <tt>InputMuteStateChanged</tt> event.
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#inputmutestatechanged
    class InputMuteStateChanged < Event
      TYPE = "InputMuteStateChanged"
      CLASSES_BY_TYPE[TYPE] = self
      # @!attribute [r] input_name
      # @return [String] <tt>inputName</tt> field
      def input_name
        get_field("inputName", TypeConverters::String)
      end
      # @!attribute [r] input_muted
      # @return [Boolean] <tt>inputMuted</tt> field
      def input_muted
        get_field("inputMuted", TypeConverters::Boolean)
      end
    end
    # An instance of <tt>InputVolumeChanged</tt> event.
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#inputvolumechanged
    class InputVolumeChanged < Event
      TYPE = "InputVolumeChanged"
      CLASSES_BY_TYPE[TYPE] = self
      # @!attribute [r] input_name
      # @return [String] <tt>inputName</tt> field
      def input_name
        get_field("inputName", TypeConverters::String)
      end
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
    end
    # An instance of <tt>InputAudioBalanceChanged</tt> event.
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#inputaudiobalancechanged
    class InputAudioBalanceChanged < Event
      TYPE = "InputAudioBalanceChanged"
      CLASSES_BY_TYPE[TYPE] = self
      # @!attribute [r] input_name
      # @return [String] <tt>inputName</tt> field
      def input_name
        get_field("inputName", TypeConverters::String)
      end
      # @!attribute [r] input_audio_balance
      # @return [Numeric] <tt>inputAudioBalance</tt> field
      def input_audio_balance
        get_field("inputAudioBalance", TypeConverters::Number)
      end
    end
    # An instance of <tt>InputAudioSyncOffsetChanged</tt> event.
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#inputaudiosyncoffsetchanged
    class InputAudioSyncOffsetChanged < Event
      TYPE = "InputAudioSyncOffsetChanged"
      CLASSES_BY_TYPE[TYPE] = self
      # @!attribute [r] input_name
      # @return [String] <tt>inputName</tt> field
      def input_name
        get_field("inputName", TypeConverters::String)
      end
      # @!attribute [r] input_audio_sync_offset
      # @return [Numeric] <tt>inputAudioSyncOffset</tt> field
      def input_audio_sync_offset
        get_field("inputAudioSyncOffset", TypeConverters::Number)
      end
    end
    # An instance of <tt>InputAudioTracksChanged</tt> event.
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#inputaudiotrackschanged
    class InputAudioTracksChanged < Event
      TYPE = "InputAudioTracksChanged"
      CLASSES_BY_TYPE[TYPE] = self
      # @!attribute [r] input_name
      # @return [String] <tt>inputName</tt> field
      def input_name
        get_field("inputName", TypeConverters::String)
      end
      # @!attribute [r] input_audio_tracks
      # @return [Hash] <tt>inputAudioTracks</tt> field
      def input_audio_tracks
        get_field("inputAudioTracks", TypeConverters::Object)
      end
    end
    # An instance of <tt>InputAudioMonitorTypeChanged</tt> event.
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#inputaudiomonitortypechanged
    class InputAudioMonitorTypeChanged < Event
      TYPE = "InputAudioMonitorTypeChanged"
      CLASSES_BY_TYPE[TYPE] = self
      # @!attribute [r] input_name
      # @return [String] <tt>inputName</tt> field
      def input_name
        get_field("inputName", TypeConverters::String)
      end
      # @!attribute [r] monitor_type
      # @return [String] <tt>monitorType</tt> field
      def monitor_type
        get_field("monitorType", TypeConverters::String)
      end
    end
    # An instance of <tt>InputVolumeMeters</tt> event.
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#inputvolumemeters
    class InputVolumeMeters < Event
      TYPE = "InputVolumeMeters"
      CLASSES_BY_TYPE[TYPE] = self
      # @!attribute [r] inputs
      # @return [Array<Hash>] <tt>inputs</tt> field
      def inputs
        get_field("inputs", TypeConverters::Array[TypeConverters::Object])
      end
    end
    # An instance of <tt>MediaInputPlaybackStarted</tt> event.
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#mediainputplaybackstarted
    class MediaInputPlaybackStarted < Event
      TYPE = "MediaInputPlaybackStarted"
      CLASSES_BY_TYPE[TYPE] = self
      # @!attribute [r] input_name
      # @return [String] <tt>inputName</tt> field
      def input_name
        get_field("inputName", TypeConverters::String)
      end
    end
    # An instance of <tt>MediaInputPlaybackEnded</tt> event.
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#mediainputplaybackended
    class MediaInputPlaybackEnded < Event
      TYPE = "MediaInputPlaybackEnded"
      CLASSES_BY_TYPE[TYPE] = self
      # @!attribute [r] input_name
      # @return [String] <tt>inputName</tt> field
      def input_name
        get_field("inputName", TypeConverters::String)
      end
    end
    # An instance of <tt>MediaInputActionTriggered</tt> event.
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#mediainputactiontriggered
    class MediaInputActionTriggered < Event
      TYPE = "MediaInputActionTriggered"
      CLASSES_BY_TYPE[TYPE] = self
      # @!attribute [r] input_name
      # @return [String] <tt>inputName</tt> field
      def input_name
        get_field("inputName", TypeConverters::String)
      end
      # @!attribute [r] media_action
      # @return [String] <tt>mediaAction</tt> field
      def media_action
        get_field("mediaAction", TypeConverters::String)
      end
    end
    # An instance of <tt>StreamStateChanged</tt> event.
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#streamstatechanged
    class StreamStateChanged < Event
      TYPE = "StreamStateChanged"
      CLASSES_BY_TYPE[TYPE] = self
      # @!attribute [r] output_active
      # @return [Boolean] <tt>outputActive</tt> field
      def output_active
        get_field("outputActive", TypeConverters::Boolean)
      end
      # @!attribute [r] output_state
      # @return [String] <tt>outputState</tt> field
      def output_state
        get_field("outputState", TypeConverters::String)
      end
    end
    # An instance of <tt>RecordStateChanged</tt> event.
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#recordstatechanged
    class RecordStateChanged < Event
      TYPE = "RecordStateChanged"
      CLASSES_BY_TYPE[TYPE] = self
      # @!attribute [r] output_active
      # @return [Boolean] <tt>outputActive</tt> field
      def output_active
        get_field("outputActive", TypeConverters::Boolean)
      end
      # @!attribute [r] output_state
      # @return [String] <tt>outputState</tt> field
      def output_state
        get_field("outputState", TypeConverters::String)
      end
    end
    # An instance of <tt>ReplayBufferStateChanged</tt> event.
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#replaybufferstatechanged
    class ReplayBufferStateChanged < Event
      TYPE = "ReplayBufferStateChanged"
      CLASSES_BY_TYPE[TYPE] = self
      # @!attribute [r] output_active
      # @return [Boolean] <tt>outputActive</tt> field
      def output_active
        get_field("outputActive", TypeConverters::Boolean)
      end
      # @!attribute [r] output_state
      # @return [String] <tt>outputState</tt> field
      def output_state
        get_field("outputState", TypeConverters::String)
      end
    end
    # An instance of <tt>VirtualcamStateChanged</tt> event.
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#virtualcamstatechanged
    class VirtualcamStateChanged < Event
      TYPE = "VirtualcamStateChanged"
      CLASSES_BY_TYPE[TYPE] = self
      # @!attribute [r] output_active
      # @return [Boolean] <tt>outputActive</tt> field
      def output_active
        get_field("outputActive", TypeConverters::Boolean)
      end
      # @!attribute [r] output_state
      # @return [String] <tt>outputState</tt> field
      def output_state
        get_field("outputState", TypeConverters::String)
      end
    end
    # An instance of <tt>ReplayBufferSaved</tt> event.
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#replaybuffersaved
    class ReplayBufferSaved < Event
      TYPE = "ReplayBufferSaved"
      CLASSES_BY_TYPE[TYPE] = self
      # @!attribute [r] saved_replay_path
      # @return [String] <tt>savedReplayPath</tt> field
      def saved_replay_path
        get_field("savedReplayPath", TypeConverters::String)
      end
    end
    # An instance of <tt>SceneItemCreated</tt> event.
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#sceneitemcreated
    class SceneItemCreated < Event
      TYPE = "SceneItemCreated"
      CLASSES_BY_TYPE[TYPE] = self
      # @!attribute [r] scene_name
      # @return [String] <tt>sceneName</tt> field
      def scene_name
        get_field("sceneName", TypeConverters::String)
      end
      # @!attribute [r] source_name
      # @return [String] <tt>sourceName</tt> field
      def source_name
        get_field("sourceName", TypeConverters::String)
      end
      # @!attribute [r] scene_item_id
      # @return [Numeric] <tt>sceneItemId</tt> field
      def scene_item_id
        get_field("sceneItemId", TypeConverters::Number)
      end
      # @!attribute [r] scene_item_index
      # @return [Numeric] <tt>sceneItemIndex</tt> field
      def scene_item_index
        get_field("sceneItemIndex", TypeConverters::Number)
      end
    end
    # An instance of <tt>SceneItemRemoved</tt> event.
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#sceneitemremoved
    class SceneItemRemoved < Event
      TYPE = "SceneItemRemoved"
      CLASSES_BY_TYPE[TYPE] = self
      # @!attribute [r] scene_name
      # @return [String] <tt>sceneName</tt> field
      def scene_name
        get_field("sceneName", TypeConverters::String)
      end
      # @!attribute [r] source_name
      # @return [String] <tt>sourceName</tt> field
      def source_name
        get_field("sourceName", TypeConverters::String)
      end
      # @!attribute [r] scene_item_id
      # @return [Numeric] <tt>sceneItemId</tt> field
      def scene_item_id
        get_field("sceneItemId", TypeConverters::Number)
      end
    end
    # An instance of <tt>SceneItemListReindexed</tt> event.
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#sceneitemlistreindexed
    class SceneItemListReindexed < Event
      TYPE = "SceneItemListReindexed"
      CLASSES_BY_TYPE[TYPE] = self
      # @!attribute [r] scene_name
      # @return [String] <tt>sceneName</tt> field
      def scene_name
        get_field("sceneName", TypeConverters::String)
      end
      # @!attribute [r] scene_items
      # @return [Array<Hash>] <tt>sceneItems</tt> field
      def scene_items
        get_field("sceneItems", TypeConverters::Array[TypeConverters::Object])
      end
    end
    # An instance of <tt>SceneItemEnableStateChanged</tt> event.
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#sceneitemenablestatechanged
    class SceneItemEnableStateChanged < Event
      TYPE = "SceneItemEnableStateChanged"
      CLASSES_BY_TYPE[TYPE] = self
      # @!attribute [r] scene_name
      # @return [String] <tt>sceneName</tt> field
      def scene_name
        get_field("sceneName", TypeConverters::String)
      end
      # @!attribute [r] scene_item_id
      # @return [Numeric] <tt>sceneItemId</tt> field
      def scene_item_id
        get_field("sceneItemId", TypeConverters::Number)
      end
      # @!attribute [r] scene_item_enabled
      # @return [Boolean] <tt>sceneItemEnabled</tt> field
      def scene_item_enabled
        get_field("sceneItemEnabled", TypeConverters::Boolean)
      end
    end
    # An instance of <tt>SceneItemLockStateChanged</tt> event.
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#sceneitemlockstatechanged
    class SceneItemLockStateChanged < Event
      TYPE = "SceneItemLockStateChanged"
      CLASSES_BY_TYPE[TYPE] = self
      # @!attribute [r] scene_name
      # @return [String] <tt>sceneName</tt> field
      def scene_name
        get_field("sceneName", TypeConverters::String)
      end
      # @!attribute [r] scene_item_id
      # @return [Numeric] <tt>sceneItemId</tt> field
      def scene_item_id
        get_field("sceneItemId", TypeConverters::Number)
      end
      # @!attribute [r] scene_item_locked
      # @return [Boolean] <tt>sceneItemLocked</tt> field
      def scene_item_locked
        get_field("sceneItemLocked", TypeConverters::Boolean)
      end
    end
    # An instance of <tt>SceneItemSelected</tt> event.
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#sceneitemselected
    class SceneItemSelected < Event
      TYPE = "SceneItemSelected"
      CLASSES_BY_TYPE[TYPE] = self
      # @!attribute [r] scene_name
      # @return [String] <tt>sceneName</tt> field
      def scene_name
        get_field("sceneName", TypeConverters::String)
      end
      # @!attribute [r] scene_item_id
      # @return [Numeric] <tt>sceneItemId</tt> field
      def scene_item_id
        get_field("sceneItemId", TypeConverters::Number)
      end
    end
    # An instance of <tt>SceneItemTransformChanged</tt> event.
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#sceneitemtransformchanged
    class SceneItemTransformChanged < Event
      TYPE = "SceneItemTransformChanged"
      CLASSES_BY_TYPE[TYPE] = self
      # @!attribute [r] scene_name
      # @return [String] <tt>sceneName</tt> field
      def scene_name
        get_field("sceneName", TypeConverters::String)
      end
      # @!attribute [r] scene_item_id
      # @return [Numeric] <tt>sceneItemId</tt> field
      def scene_item_id
        get_field("sceneItemId", TypeConverters::Number)
      end
      # @!attribute [r] scene_item_transform
      # @return [Hash] <tt>sceneItemTransform</tt> field
      def scene_item_transform
        get_field("sceneItemTransform", TypeConverters::Object)
      end
    end
    # An instance of <tt>SceneCreated</tt> event.
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#scenecreated
    class SceneCreated < Event
      TYPE = "SceneCreated"
      CLASSES_BY_TYPE[TYPE] = self
      # @!attribute [r] scene_name
      # @return [String] <tt>sceneName</tt> field
      def scene_name
        get_field("sceneName", TypeConverters::String)
      end
      # @!attribute [r] is_group
      # @return [Boolean] <tt>isGroup</tt> field
      def is_group
        get_field("isGroup", TypeConverters::Boolean)
      end
    end
    # An instance of <tt>SceneRemoved</tt> event.
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#sceneremoved
    class SceneRemoved < Event
      TYPE = "SceneRemoved"
      CLASSES_BY_TYPE[TYPE] = self
      # @!attribute [r] scene_name
      # @return [String] <tt>sceneName</tt> field
      def scene_name
        get_field("sceneName", TypeConverters::String)
      end
      # @!attribute [r] is_group
      # @return [Boolean] <tt>isGroup</tt> field
      def is_group
        get_field("isGroup", TypeConverters::Boolean)
      end
    end
    # An instance of <tt>SceneNameChanged</tt> event.
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#scenenamechanged
    class SceneNameChanged < Event
      TYPE = "SceneNameChanged"
      CLASSES_BY_TYPE[TYPE] = self
      # @!attribute [r] old_scene_name
      # @return [String] <tt>oldSceneName</tt> field
      def old_scene_name
        get_field("oldSceneName", TypeConverters::String)
      end
      # @!attribute [r] scene_name
      # @return [String] <tt>sceneName</tt> field
      def scene_name
        get_field("sceneName", TypeConverters::String)
      end
    end
    # An instance of <tt>CurrentProgramSceneChanged</tt> event.
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#currentprogramscenechanged
    class CurrentProgramSceneChanged < Event
      TYPE = "CurrentProgramSceneChanged"
      CLASSES_BY_TYPE[TYPE] = self
      # @!attribute [r] scene_name
      # @return [String] <tt>sceneName</tt> field
      def scene_name
        get_field("sceneName", TypeConverters::String)
      end
    end
    # An instance of <tt>CurrentPreviewSceneChanged</tt> event.
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#currentpreviewscenechanged
    class CurrentPreviewSceneChanged < Event
      TYPE = "CurrentPreviewSceneChanged"
      CLASSES_BY_TYPE[TYPE] = self
      # @!attribute [r] scene_name
      # @return [String] <tt>sceneName</tt> field
      def scene_name
        get_field("sceneName", TypeConverters::String)
      end
    end
    # An instance of <tt>SceneListChanged</tt> event.
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#scenelistchanged
    class SceneListChanged < Event
      TYPE = "SceneListChanged"
      CLASSES_BY_TYPE[TYPE] = self
      # @!attribute [r] scenes
      # @return [Array<Hash>] <tt>scenes</tt> field
      def scenes
        get_field("scenes", TypeConverters::Array[TypeConverters::Object])
      end
    end
    # An instance of <tt>CurrentSceneTransitionChanged</tt> event.
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#currentscenetransitionchanged
    class CurrentSceneTransitionChanged < Event
      TYPE = "CurrentSceneTransitionChanged"
      CLASSES_BY_TYPE[TYPE] = self
      # @!attribute [r] transition_name
      # @return [String] <tt>transitionName</tt> field
      def transition_name
        get_field("transitionName", TypeConverters::String)
      end
    end
    # An instance of <tt>CurrentSceneTransitionDurationChanged</tt> event.
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#currentscenetransitiondurationchanged
    class CurrentSceneTransitionDurationChanged < Event
      TYPE = "CurrentSceneTransitionDurationChanged"
      CLASSES_BY_TYPE[TYPE] = self
      # @!attribute [r] transition_duration
      # @return [Numeric] <tt>transitionDuration</tt> field
      def transition_duration
        get_field("transitionDuration", TypeConverters::Number)
      end
    end
    # An instance of <tt>SceneTransitionStarted</tt> event.
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#scenetransitionstarted
    class SceneTransitionStarted < Event
      TYPE = "SceneTransitionStarted"
      CLASSES_BY_TYPE[TYPE] = self
      # @!attribute [r] transition_name
      # @return [String] <tt>transitionName</tt> field
      def transition_name
        get_field("transitionName", TypeConverters::String)
      end
    end
    # An instance of <tt>SceneTransitionEnded</tt> event.
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#scenetransitionended
    class SceneTransitionEnded < Event
      TYPE = "SceneTransitionEnded"
      CLASSES_BY_TYPE[TYPE] = self
      # @!attribute [r] transition_name
      # @return [String] <tt>transitionName</tt> field
      def transition_name
        get_field("transitionName", TypeConverters::String)
      end
    end
    # An instance of <tt>SceneTransitionVideoEnded</tt> event.
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#scenetransitionvideoended
    class SceneTransitionVideoEnded < Event
      TYPE = "SceneTransitionVideoEnded"
      CLASSES_BY_TYPE[TYPE] = self
      # @!attribute [r] transition_name
      # @return [String] <tt>transitionName</tt> field
      def transition_name
        get_field("transitionName", TypeConverters::String)
      end
    end
    # An instance of <tt>StudioModeStateChanged</tt> event.
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#studiomodestatechanged
    class StudioModeStateChanged < Event
      TYPE = "StudioModeStateChanged"
      CLASSES_BY_TYPE[TYPE] = self
      # @!attribute [r] studio_mode_enabled
      # @return [Boolean] <tt>studioModeEnabled</tt> field
      def studio_mode_enabled
        get_field("studioModeEnabled", TypeConverters::Boolean)
      end
    end
    # An instance of <tt>VendorEvent</tt> event.
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#vendorevent
    class VendorEvent < Event
      TYPE = "VendorEvent"
      CLASSES_BY_TYPE[TYPE] = self
      # @!attribute [r] vendor_name
      # @return [String] <tt>vendorName</tt> field
      def vendor_name
        get_field("vendorName", TypeConverters::String)
      end
      # @!attribute [r] event_type
      # @return [String] <tt>eventType</tt> field
      def event_type
        get_field("eventType", TypeConverters::String)
      end
      # @!attribute [r] event_data
      # @return [Hash] <tt>eventData</tt> field
      def event_data
        get_field("eventData", TypeConverters::Object)
      end
    end
  end # module Events
end
