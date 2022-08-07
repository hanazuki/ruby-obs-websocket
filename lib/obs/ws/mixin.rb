# frozen_string_literal: false

module OBS::WS::Protocol
  module Mixins
    module Event
      # Adds an event handler for <tt>CurrentSceneCollectionChanging</tt> event.
      # @param executor the executor on which the callback is invoked
      # @yieldparam event [Events::CurrentSceneCollectionChanging] the event object
      # @return [void]
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#currentscenecollectionchanging
      def on_current_scene_collection_changing(
        executor: default_executor,
        &listener
      )
        on("CurrentSceneCollectionChanging", executor: executor, &listener)
      end
      # Adds an event handler for <tt>CurrentSceneCollectionChanged</tt> event.
      # @param executor the executor on which the callback is invoked
      # @yieldparam event [Events::CurrentSceneCollectionChanged] the event object
      # @return [void]
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#currentscenecollectionchanged
      def on_current_scene_collection_changed(
        executor: default_executor,
        &listener
      )
        on("CurrentSceneCollectionChanged", executor: executor, &listener)
      end
      # Adds an event handler for <tt>SceneCollectionListChanged</tt> event.
      # @param executor the executor on which the callback is invoked
      # @yieldparam event [Events::SceneCollectionListChanged] the event object
      # @return [void]
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#scenecollectionlistchanged
      def on_scene_collection_list_changed(
        executor: default_executor,
        &listener
      )
        on("SceneCollectionListChanged", executor: executor, &listener)
      end
      # Adds an event handler for <tt>CurrentProfileChanging</tt> event.
      # @param executor the executor on which the callback is invoked
      # @yieldparam event [Events::CurrentProfileChanging] the event object
      # @return [void]
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#currentprofilechanging
      def on_current_profile_changing(executor: default_executor, &listener)
        on("CurrentProfileChanging", executor: executor, &listener)
      end
      # Adds an event handler for <tt>CurrentProfileChanged</tt> event.
      # @param executor the executor on which the callback is invoked
      # @yieldparam event [Events::CurrentProfileChanged] the event object
      # @return [void]
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#currentprofilechanged
      def on_current_profile_changed(executor: default_executor, &listener)
        on("CurrentProfileChanged", executor: executor, &listener)
      end
      # Adds an event handler for <tt>ProfileListChanged</tt> event.
      # @param executor the executor on which the callback is invoked
      # @yieldparam event [Events::ProfileListChanged] the event object
      # @return [void]
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#profilelistchanged
      def on_profile_list_changed(executor: default_executor, &listener)
        on("ProfileListChanged", executor: executor, &listener)
      end
      # Adds an event handler for <tt>SourceFilterListReindexed</tt> event.
      # @param executor the executor on which the callback is invoked
      # @yieldparam event [Events::SourceFilterListReindexed] the event object
      # @return [void]
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#sourcefilterlistreindexed
      def on_source_filter_list_reindexed(executor: default_executor, &listener)
        on("SourceFilterListReindexed", executor: executor, &listener)
      end
      # Adds an event handler for <tt>SourceFilterCreated</tt> event.
      # @param executor the executor on which the callback is invoked
      # @yieldparam event [Events::SourceFilterCreated] the event object
      # @return [void]
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#sourcefiltercreated
      def on_source_filter_created(executor: default_executor, &listener)
        on("SourceFilterCreated", executor: executor, &listener)
      end
      # Adds an event handler for <tt>SourceFilterRemoved</tt> event.
      # @param executor the executor on which the callback is invoked
      # @yieldparam event [Events::SourceFilterRemoved] the event object
      # @return [void]
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#sourcefilterremoved
      def on_source_filter_removed(executor: default_executor, &listener)
        on("SourceFilterRemoved", executor: executor, &listener)
      end
      # Adds an event handler for <tt>SourceFilterNameChanged</tt> event.
      # @param executor the executor on which the callback is invoked
      # @yieldparam event [Events::SourceFilterNameChanged] the event object
      # @return [void]
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#sourcefilternamechanged
      def on_source_filter_name_changed(executor: default_executor, &listener)
        on("SourceFilterNameChanged", executor: executor, &listener)
      end
      # Adds an event handler for <tt>SourceFilterEnableStateChanged</tt> event.
      # @param executor the executor on which the callback is invoked
      # @yieldparam event [Events::SourceFilterEnableStateChanged] the event object
      # @return [void]
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#sourcefilterenablestatechanged
      def on_source_filter_enable_state_changed(
        executor: default_executor,
        &listener
      )
        on("SourceFilterEnableStateChanged", executor: executor, &listener)
      end
      # Adds an event handler for <tt>ExitStarted</tt> event.
      # @param executor the executor on which the callback is invoked
      # @yieldparam event [Events::ExitStarted] the event object
      # @return [void]
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#exitstarted
      def on_exit_started(executor: default_executor, &listener)
        on("ExitStarted", executor: executor, &listener)
      end
      # Adds an event handler for <tt>InputCreated</tt> event.
      # @param executor the executor on which the callback is invoked
      # @yieldparam event [Events::InputCreated] the event object
      # @return [void]
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#inputcreated
      def on_input_created(executor: default_executor, &listener)
        on("InputCreated", executor: executor, &listener)
      end
      # Adds an event handler for <tt>InputRemoved</tt> event.
      # @param executor the executor on which the callback is invoked
      # @yieldparam event [Events::InputRemoved] the event object
      # @return [void]
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#inputremoved
      def on_input_removed(executor: default_executor, &listener)
        on("InputRemoved", executor: executor, &listener)
      end
      # Adds an event handler for <tt>InputNameChanged</tt> event.
      # @param executor the executor on which the callback is invoked
      # @yieldparam event [Events::InputNameChanged] the event object
      # @return [void]
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#inputnamechanged
      def on_input_name_changed(executor: default_executor, &listener)
        on("InputNameChanged", executor: executor, &listener)
      end
      # Adds an event handler for <tt>InputActiveStateChanged</tt> event.
      # @param executor the executor on which the callback is invoked
      # @yieldparam event [Events::InputActiveStateChanged] the event object
      # @return [void]
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#inputactivestatechanged
      def on_input_active_state_changed(executor: default_executor, &listener)
        on("InputActiveStateChanged", executor: executor, &listener)
      end
      # Adds an event handler for <tt>InputShowStateChanged</tt> event.
      # @param executor the executor on which the callback is invoked
      # @yieldparam event [Events::InputShowStateChanged] the event object
      # @return [void]
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#inputshowstatechanged
      def on_input_show_state_changed(executor: default_executor, &listener)
        on("InputShowStateChanged", executor: executor, &listener)
      end
      # Adds an event handler for <tt>InputMuteStateChanged</tt> event.
      # @param executor the executor on which the callback is invoked
      # @yieldparam event [Events::InputMuteStateChanged] the event object
      # @return [void]
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#inputmutestatechanged
      def on_input_mute_state_changed(executor: default_executor, &listener)
        on("InputMuteStateChanged", executor: executor, &listener)
      end
      # Adds an event handler for <tt>InputVolumeChanged</tt> event.
      # @param executor the executor on which the callback is invoked
      # @yieldparam event [Events::InputVolumeChanged] the event object
      # @return [void]
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#inputvolumechanged
      def on_input_volume_changed(executor: default_executor, &listener)
        on("InputVolumeChanged", executor: executor, &listener)
      end
      # Adds an event handler for <tt>InputAudioBalanceChanged</tt> event.
      # @param executor the executor on which the callback is invoked
      # @yieldparam event [Events::InputAudioBalanceChanged] the event object
      # @return [void]
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#inputaudiobalancechanged
      def on_input_audio_balance_changed(executor: default_executor, &listener)
        on("InputAudioBalanceChanged", executor: executor, &listener)
      end
      # Adds an event handler for <tt>InputAudioSyncOffsetChanged</tt> event.
      # @param executor the executor on which the callback is invoked
      # @yieldparam event [Events::InputAudioSyncOffsetChanged] the event object
      # @return [void]
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#inputaudiosyncoffsetchanged
      def on_input_audio_sync_offset_changed(
        executor: default_executor,
        &listener
      )
        on("InputAudioSyncOffsetChanged", executor: executor, &listener)
      end
      # Adds an event handler for <tt>InputAudioTracksChanged</tt> event.
      # @param executor the executor on which the callback is invoked
      # @yieldparam event [Events::InputAudioTracksChanged] the event object
      # @return [void]
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#inputaudiotrackschanged
      def on_input_audio_tracks_changed(executor: default_executor, &listener)
        on("InputAudioTracksChanged", executor: executor, &listener)
      end
      # Adds an event handler for <tt>InputAudioMonitorTypeChanged</tt> event.
      # @param executor the executor on which the callback is invoked
      # @yieldparam event [Events::InputAudioMonitorTypeChanged] the event object
      # @return [void]
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#inputaudiomonitortypechanged
      def on_input_audio_monitor_type_changed(
        executor: default_executor,
        &listener
      )
        on("InputAudioMonitorTypeChanged", executor: executor, &listener)
      end
      # Adds an event handler for <tt>InputVolumeMeters</tt> event.
      # @param executor the executor on which the callback is invoked
      # @yieldparam event [Events::InputVolumeMeters] the event object
      # @return [void]
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#inputvolumemeters
      def on_input_volume_meters(executor: default_executor, &listener)
        on("InputVolumeMeters", executor: executor, &listener)
      end
      # Adds an event handler for <tt>MediaInputPlaybackStarted</tt> event.
      # @param executor the executor on which the callback is invoked
      # @yieldparam event [Events::MediaInputPlaybackStarted] the event object
      # @return [void]
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#mediainputplaybackstarted
      def on_media_input_playback_started(executor: default_executor, &listener)
        on("MediaInputPlaybackStarted", executor: executor, &listener)
      end
      # Adds an event handler for <tt>MediaInputPlaybackEnded</tt> event.
      # @param executor the executor on which the callback is invoked
      # @yieldparam event [Events::MediaInputPlaybackEnded] the event object
      # @return [void]
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#mediainputplaybackended
      def on_media_input_playback_ended(executor: default_executor, &listener)
        on("MediaInputPlaybackEnded", executor: executor, &listener)
      end
      # Adds an event handler for <tt>MediaInputActionTriggered</tt> event.
      # @param executor the executor on which the callback is invoked
      # @yieldparam event [Events::MediaInputActionTriggered] the event object
      # @return [void]
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#mediainputactiontriggered
      def on_media_input_action_triggered(executor: default_executor, &listener)
        on("MediaInputActionTriggered", executor: executor, &listener)
      end
      # Adds an event handler for <tt>StreamStateChanged</tt> event.
      # @param executor the executor on which the callback is invoked
      # @yieldparam event [Events::StreamStateChanged] the event object
      # @return [void]
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#streamstatechanged
      def on_stream_state_changed(executor: default_executor, &listener)
        on("StreamStateChanged", executor: executor, &listener)
      end
      # Adds an event handler for <tt>RecordStateChanged</tt> event.
      # @param executor the executor on which the callback is invoked
      # @yieldparam event [Events::RecordStateChanged] the event object
      # @return [void]
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#recordstatechanged
      def on_record_state_changed(executor: default_executor, &listener)
        on("RecordStateChanged", executor: executor, &listener)
      end
      # Adds an event handler for <tt>ReplayBufferStateChanged</tt> event.
      # @param executor the executor on which the callback is invoked
      # @yieldparam event [Events::ReplayBufferStateChanged] the event object
      # @return [void]
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#replaybufferstatechanged
      def on_replay_buffer_state_changed(executor: default_executor, &listener)
        on("ReplayBufferStateChanged", executor: executor, &listener)
      end
      # Adds an event handler for <tt>VirtualcamStateChanged</tt> event.
      # @param executor the executor on which the callback is invoked
      # @yieldparam event [Events::VirtualcamStateChanged] the event object
      # @return [void]
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#virtualcamstatechanged
      def on_virtualcam_state_changed(executor: default_executor, &listener)
        on("VirtualcamStateChanged", executor: executor, &listener)
      end
      # Adds an event handler for <tt>ReplayBufferSaved</tt> event.
      # @param executor the executor on which the callback is invoked
      # @yieldparam event [Events::ReplayBufferSaved] the event object
      # @return [void]
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#replaybuffersaved
      def on_replay_buffer_saved(executor: default_executor, &listener)
        on("ReplayBufferSaved", executor: executor, &listener)
      end
      # Adds an event handler for <tt>SceneItemCreated</tt> event.
      # @param executor the executor on which the callback is invoked
      # @yieldparam event [Events::SceneItemCreated] the event object
      # @return [void]
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#sceneitemcreated
      def on_scene_item_created(executor: default_executor, &listener)
        on("SceneItemCreated", executor: executor, &listener)
      end
      # Adds an event handler for <tt>SceneItemRemoved</tt> event.
      # @param executor the executor on which the callback is invoked
      # @yieldparam event [Events::SceneItemRemoved] the event object
      # @return [void]
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#sceneitemremoved
      def on_scene_item_removed(executor: default_executor, &listener)
        on("SceneItemRemoved", executor: executor, &listener)
      end
      # Adds an event handler for <tt>SceneItemListReindexed</tt> event.
      # @param executor the executor on which the callback is invoked
      # @yieldparam event [Events::SceneItemListReindexed] the event object
      # @return [void]
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#sceneitemlistreindexed
      def on_scene_item_list_reindexed(executor: default_executor, &listener)
        on("SceneItemListReindexed", executor: executor, &listener)
      end
      # Adds an event handler for <tt>SceneItemEnableStateChanged</tt> event.
      # @param executor the executor on which the callback is invoked
      # @yieldparam event [Events::SceneItemEnableStateChanged] the event object
      # @return [void]
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#sceneitemenablestatechanged
      def on_scene_item_enable_state_changed(
        executor: default_executor,
        &listener
      )
        on("SceneItemEnableStateChanged", executor: executor, &listener)
      end
      # Adds an event handler for <tt>SceneItemLockStateChanged</tt> event.
      # @param executor the executor on which the callback is invoked
      # @yieldparam event [Events::SceneItemLockStateChanged] the event object
      # @return [void]
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#sceneitemlockstatechanged
      def on_scene_item_lock_state_changed(
        executor: default_executor,
        &listener
      )
        on("SceneItemLockStateChanged", executor: executor, &listener)
      end
      # Adds an event handler for <tt>SceneItemSelected</tt> event.
      # @param executor the executor on which the callback is invoked
      # @yieldparam event [Events::SceneItemSelected] the event object
      # @return [void]
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#sceneitemselected
      def on_scene_item_selected(executor: default_executor, &listener)
        on("SceneItemSelected", executor: executor, &listener)
      end
      # Adds an event handler for <tt>SceneItemTransformChanged</tt> event.
      # @param executor the executor on which the callback is invoked
      # @yieldparam event [Events::SceneItemTransformChanged] the event object
      # @return [void]
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#sceneitemtransformchanged
      def on_scene_item_transform_changed(executor: default_executor, &listener)
        on("SceneItemTransformChanged", executor: executor, &listener)
      end
      # Adds an event handler for <tt>SceneCreated</tt> event.
      # @param executor the executor on which the callback is invoked
      # @yieldparam event [Events::SceneCreated] the event object
      # @return [void]
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#scenecreated
      def on_scene_created(executor: default_executor, &listener)
        on("SceneCreated", executor: executor, &listener)
      end
      # Adds an event handler for <tt>SceneRemoved</tt> event.
      # @param executor the executor on which the callback is invoked
      # @yieldparam event [Events::SceneRemoved] the event object
      # @return [void]
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#sceneremoved
      def on_scene_removed(executor: default_executor, &listener)
        on("SceneRemoved", executor: executor, &listener)
      end
      # Adds an event handler for <tt>SceneNameChanged</tt> event.
      # @param executor the executor on which the callback is invoked
      # @yieldparam event [Events::SceneNameChanged] the event object
      # @return [void]
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#scenenamechanged
      def on_scene_name_changed(executor: default_executor, &listener)
        on("SceneNameChanged", executor: executor, &listener)
      end
      # Adds an event handler for <tt>CurrentProgramSceneChanged</tt> event.
      # @param executor the executor on which the callback is invoked
      # @yieldparam event [Events::CurrentProgramSceneChanged] the event object
      # @return [void]
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#currentprogramscenechanged
      def on_current_program_scene_changed(
        executor: default_executor,
        &listener
      )
        on("CurrentProgramSceneChanged", executor: executor, &listener)
      end
      # Adds an event handler for <tt>CurrentPreviewSceneChanged</tt> event.
      # @param executor the executor on which the callback is invoked
      # @yieldparam event [Events::CurrentPreviewSceneChanged] the event object
      # @return [void]
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#currentpreviewscenechanged
      def on_current_preview_scene_changed(
        executor: default_executor,
        &listener
      )
        on("CurrentPreviewSceneChanged", executor: executor, &listener)
      end
      # Adds an event handler for <tt>SceneListChanged</tt> event.
      # @param executor the executor on which the callback is invoked
      # @yieldparam event [Events::SceneListChanged] the event object
      # @return [void]
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#scenelistchanged
      def on_scene_list_changed(executor: default_executor, &listener)
        on("SceneListChanged", executor: executor, &listener)
      end
      # Adds an event handler for <tt>CurrentSceneTransitionChanged</tt> event.
      # @param executor the executor on which the callback is invoked
      # @yieldparam event [Events::CurrentSceneTransitionChanged] the event object
      # @return [void]
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#currentscenetransitionchanged
      def on_current_scene_transition_changed(
        executor: default_executor,
        &listener
      )
        on("CurrentSceneTransitionChanged", executor: executor, &listener)
      end
      # Adds an event handler for <tt>CurrentSceneTransitionDurationChanged</tt> event.
      # @param executor the executor on which the callback is invoked
      # @yieldparam event [Events::CurrentSceneTransitionDurationChanged] the event object
      # @return [void]
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#currentscenetransitiondurationchanged
      def on_current_scene_transition_duration_changed(
        executor: default_executor,
        &listener
      )
        on(
          "CurrentSceneTransitionDurationChanged",
          executor: executor,
          &listener
        )
      end
      # Adds an event handler for <tt>SceneTransitionStarted</tt> event.
      # @param executor the executor on which the callback is invoked
      # @yieldparam event [Events::SceneTransitionStarted] the event object
      # @return [void]
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#scenetransitionstarted
      def on_scene_transition_started(executor: default_executor, &listener)
        on("SceneTransitionStarted", executor: executor, &listener)
      end
      # Adds an event handler for <tt>SceneTransitionEnded</tt> event.
      # @param executor the executor on which the callback is invoked
      # @yieldparam event [Events::SceneTransitionEnded] the event object
      # @return [void]
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#scenetransitionended
      def on_scene_transition_ended(executor: default_executor, &listener)
        on("SceneTransitionEnded", executor: executor, &listener)
      end
      # Adds an event handler for <tt>SceneTransitionVideoEnded</tt> event.
      # @param executor the executor on which the callback is invoked
      # @yieldparam event [Events::SceneTransitionVideoEnded] the event object
      # @return [void]
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#scenetransitionvideoended
      def on_scene_transition_video_ended(executor: default_executor, &listener)
        on("SceneTransitionVideoEnded", executor: executor, &listener)
      end
      # Adds an event handler for <tt>StudioModeStateChanged</tt> event.
      # @param executor the executor on which the callback is invoked
      # @yieldparam event [Events::StudioModeStateChanged] the event object
      # @return [void]
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#studiomodestatechanged
      def on_studio_mode_state_changed(executor: default_executor, &listener)
        on("StudioModeStateChanged", executor: executor, &listener)
      end
      # Adds an event handler for <tt>VendorEvent</tt> event.
      # @param executor the executor on which the callback is invoked
      # @yieldparam event [Events::VendorEvent] the event object
      # @return [void]
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#vendorevent
      def on_vendor_event(executor: default_executor, &listener)
        on("VendorEvent", executor: executor, &listener)
      end
    end # module Event
    module Request
      # Sends <tt>GetPersistentData</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getpersistentdata
      # @param realm [String] <tt>realm</tt> field
      # @param slot_name [String] <tt>slotName</tt> field
      # @return [Future<Responses::GetPersistentData>]
      def get_persistent_data(realm:, slot_name:)
        send_request(
          Requests::GetPersistentData.new(
            { realm: realm, slot_name: slot_name }
          )
        )
      end
      # Sends <tt>SetPersistentData</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setpersistentdata
      # @param realm [String] <tt>realm</tt> field
      # @param slot_name [String] <tt>slotName</tt> field
      # @param slot_value [Object] <tt>slotValue</tt> field
      # @return [Future<Responses::SetPersistentData>]
      def set_persistent_data(realm:, slot_name:, slot_value:)
        send_request(
          Requests::SetPersistentData.new(
            { realm: realm, slot_name: slot_name, slot_value: slot_value }
          )
        )
      end
      # Sends <tt>GetSceneCollectionList</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getscenecollectionlist
      # @return [Future<Responses::GetSceneCollectionList>]
      def get_scene_collection_list()
        send_request(Requests::GetSceneCollectionList.new({}))
      end
      # Sends <tt>SetCurrentSceneCollection</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setcurrentscenecollection
      # @param scene_collection_name [String] <tt>sceneCollectionName</tt> field
      # @return [Future<Responses::SetCurrentSceneCollection>]
      def set_current_scene_collection(scene_collection_name:)
        send_request(
          Requests::SetCurrentSceneCollection.new(
            { scene_collection_name: scene_collection_name }
          )
        )
      end
      # Sends <tt>CreateSceneCollection</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#createscenecollection
      # @param scene_collection_name [String] <tt>sceneCollectionName</tt> field
      # @return [Future<Responses::CreateSceneCollection>]
      def create_scene_collection(scene_collection_name:)
        send_request(
          Requests::CreateSceneCollection.new(
            { scene_collection_name: scene_collection_name }
          )
        )
      end
      # Sends <tt>GetProfileList</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getprofilelist
      # @return [Future<Responses::GetProfileList>]
      def get_profile_list()
        send_request(Requests::GetProfileList.new({}))
      end
      # Sends <tt>SetCurrentProfile</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setcurrentprofile
      # @param profile_name [String] <tt>profileName</tt> field
      # @return [Future<Responses::SetCurrentProfile>]
      def set_current_profile(profile_name:)
        send_request(
          Requests::SetCurrentProfile.new({ profile_name: profile_name })
        )
      end
      # Sends <tt>CreateProfile</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#createprofile
      # @param profile_name [String] <tt>profileName</tt> field
      # @return [Future<Responses::CreateProfile>]
      def create_profile(profile_name:)
        send_request(
          Requests::CreateProfile.new({ profile_name: profile_name })
        )
      end
      # Sends <tt>RemoveProfile</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#removeprofile
      # @param profile_name [String] <tt>profileName</tt> field
      # @return [Future<Responses::RemoveProfile>]
      def remove_profile(profile_name:)
        send_request(
          Requests::RemoveProfile.new({ profile_name: profile_name })
        )
      end
      # Sends <tt>GetProfileParameter</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getprofileparameter
      # @param parameter_category [String] <tt>parameterCategory</tt> field
      # @param parameter_name [String] <tt>parameterName</tt> field
      # @return [Future<Responses::GetProfileParameter>]
      def get_profile_parameter(parameter_category:, parameter_name:)
        send_request(
          Requests::GetProfileParameter.new(
            {
              parameter_category: parameter_category,
              parameter_name: parameter_name
            }
          )
        )
      end
      # Sends <tt>SetProfileParameter</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setprofileparameter
      # @param parameter_category [String] <tt>parameterCategory</tt> field
      # @param parameter_name [String] <tt>parameterName</tt> field
      # @param parameter_value [String] <tt>parameterValue</tt> field
      # @return [Future<Responses::SetProfileParameter>]
      def set_profile_parameter(
        parameter_category:,
        parameter_name:,
        parameter_value:
      )
        send_request(
          Requests::SetProfileParameter.new(
            {
              parameter_category: parameter_category,
              parameter_name: parameter_name,
              parameter_value: parameter_value
            }
          )
        )
      end
      # Sends <tt>GetVideoSettings</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getvideosettings
      # @return [Future<Responses::GetVideoSettings>]
      def get_video_settings()
        send_request(Requests::GetVideoSettings.new({}))
      end
      # Sends <tt>SetVideoSettings</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setvideosettings
      # @param fps_numerator [Numeric, nil] <tt>fpsNumerator</tt> field
      # @param fps_denominator [Numeric, nil] <tt>fpsDenominator</tt> field
      # @param base_width [Numeric, nil] <tt>baseWidth</tt> field
      # @param base_height [Numeric, nil] <tt>baseHeight</tt> field
      # @param output_width [Numeric, nil] <tt>outputWidth</tt> field
      # @param output_height [Numeric, nil] <tt>outputHeight</tt> field
      # @return [Future<Responses::SetVideoSettings>]
      def set_video_settings(
        fps_numerator: nil,
        fps_denominator: nil,
        base_width: nil,
        base_height: nil,
        output_width: nil,
        output_height: nil
      )
        send_request(
          Requests::SetVideoSettings.new(
            {
              fps_numerator: fps_numerator,
              fps_denominator: fps_denominator,
              base_width: base_width,
              base_height: base_height,
              output_width: output_width,
              output_height: output_height
            }
          )
        )
      end
      # Sends <tt>GetStreamServiceSettings</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getstreamservicesettings
      # @return [Future<Responses::GetStreamServiceSettings>]
      def get_stream_service_settings()
        send_request(Requests::GetStreamServiceSettings.new({}))
      end
      # Sends <tt>SetStreamServiceSettings</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setstreamservicesettings
      # @param stream_service_type [String] <tt>streamServiceType</tt> field
      # @param stream_service_settings [Hash] <tt>streamServiceSettings</tt> field
      # @return [Future<Responses::SetStreamServiceSettings>]
      def set_stream_service_settings(
        stream_service_type:,
        stream_service_settings:
      )
        send_request(
          Requests::SetStreamServiceSettings.new(
            {
              stream_service_type: stream_service_type,
              stream_service_settings: stream_service_settings
            }
          )
        )
      end
      # Sends <tt>GetRecordDirectory</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getrecorddirectory
      # @return [Future<Responses::GetRecordDirectory>]
      def get_record_directory()
        send_request(Requests::GetRecordDirectory.new({}))
      end
      # Sends <tt>GetSourceFilterList</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getsourcefilterlist
      # @param source_name [String] <tt>sourceName</tt> field
      # @return [Future<Responses::GetSourceFilterList>]
      def get_source_filter_list(source_name:)
        send_request(
          Requests::GetSourceFilterList.new({ source_name: source_name })
        )
      end
      # Sends <tt>GetSourceFilterDefaultSettings</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getsourcefilterdefaultsettings
      # @param filter_kind [String] <tt>filterKind</tt> field
      # @return [Future<Responses::GetSourceFilterDefaultSettings>]
      def get_source_filter_default_settings(filter_kind:)
        send_request(
          Requests::GetSourceFilterDefaultSettings.new(
            { filter_kind: filter_kind }
          )
        )
      end
      # Sends <tt>CreateSourceFilter</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#createsourcefilter
      # @param source_name [String] <tt>sourceName</tt> field
      # @param filter_name [String] <tt>filterName</tt> field
      # @param filter_kind [String] <tt>filterKind</tt> field
      # @param filter_settings [Hash, nil] <tt>filterSettings</tt> field
      # @return [Future<Responses::CreateSourceFilter>]
      def create_source_filter(
        source_name:,
        filter_name:,
        filter_kind:,
        filter_settings: nil
      )
        send_request(
          Requests::CreateSourceFilter.new(
            {
              source_name: source_name,
              filter_name: filter_name,
              filter_kind: filter_kind,
              filter_settings: filter_settings
            }
          )
        )
      end
      # Sends <tt>RemoveSourceFilter</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#removesourcefilter
      # @param source_name [String] <tt>sourceName</tt> field
      # @param filter_name [String] <tt>filterName</tt> field
      # @return [Future<Responses::RemoveSourceFilter>]
      def remove_source_filter(source_name:, filter_name:)
        send_request(
          Requests::RemoveSourceFilter.new(
            { source_name: source_name, filter_name: filter_name }
          )
        )
      end
      # Sends <tt>SetSourceFilterName</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setsourcefiltername
      # @param source_name [String] <tt>sourceName</tt> field
      # @param filter_name [String] <tt>filterName</tt> field
      # @param new_filter_name [String] <tt>newFilterName</tt> field
      # @return [Future<Responses::SetSourceFilterName>]
      def set_source_filter_name(source_name:, filter_name:, new_filter_name:)
        send_request(
          Requests::SetSourceFilterName.new(
            {
              source_name: source_name,
              filter_name: filter_name,
              new_filter_name: new_filter_name
            }
          )
        )
      end
      # Sends <tt>GetSourceFilter</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getsourcefilter
      # @param source_name [String] <tt>sourceName</tt> field
      # @param filter_name [String] <tt>filterName</tt> field
      # @return [Future<Responses::GetSourceFilter>]
      def get_source_filter(source_name:, filter_name:)
        send_request(
          Requests::GetSourceFilter.new(
            { source_name: source_name, filter_name: filter_name }
          )
        )
      end
      # Sends <tt>SetSourceFilterIndex</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setsourcefilterindex
      # @param source_name [String] <tt>sourceName</tt> field
      # @param filter_name [String] <tt>filterName</tt> field
      # @param filter_index [Numeric] <tt>filterIndex</tt> field
      # @return [Future<Responses::SetSourceFilterIndex>]
      def set_source_filter_index(source_name:, filter_name:, filter_index:)
        send_request(
          Requests::SetSourceFilterIndex.new(
            {
              source_name: source_name,
              filter_name: filter_name,
              filter_index: filter_index
            }
          )
        )
      end
      # Sends <tt>SetSourceFilterSettings</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setsourcefiltersettings
      # @param source_name [String] <tt>sourceName</tt> field
      # @param filter_name [String] <tt>filterName</tt> field
      # @param filter_settings [Hash] <tt>filterSettings</tt> field
      # @param overlay [Boolean, nil] <tt>overlay</tt> field
      # @return [Future<Responses::SetSourceFilterSettings>]
      def set_source_filter_settings(
        source_name:,
        filter_name:,
        filter_settings:,
        overlay: nil
      )
        send_request(
          Requests::SetSourceFilterSettings.new(
            {
              source_name: source_name,
              filter_name: filter_name,
              filter_settings: filter_settings,
              overlay: overlay
            }
          )
        )
      end
      # Sends <tt>SetSourceFilterEnabled</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setsourcefilterenabled
      # @param source_name [String] <tt>sourceName</tt> field
      # @param filter_name [String] <tt>filterName</tt> field
      # @param filter_enabled [Boolean] <tt>filterEnabled</tt> field
      # @return [Future<Responses::SetSourceFilterEnabled>]
      def set_source_filter_enabled(source_name:, filter_name:, filter_enabled:)
        send_request(
          Requests::SetSourceFilterEnabled.new(
            {
              source_name: source_name,
              filter_name: filter_name,
              filter_enabled: filter_enabled
            }
          )
        )
      end
      # Sends <tt>GetVersion</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getversion
      # @return [Future<Responses::GetVersion>]
      def get_version()
        send_request(Requests::GetVersion.new({}))
      end
      # Sends <tt>GetStats</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getstats
      # @return [Future<Responses::GetStats>]
      def get_stats()
        send_request(Requests::GetStats.new({}))
      end
      # Sends <tt>BroadcastCustomEvent</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#broadcastcustomevent
      # @param event_data [Hash] <tt>eventData</tt> field
      # @return [Future<Responses::BroadcastCustomEvent>]
      def broadcast_custom_event(event_data:)
        send_request(
          Requests::BroadcastCustomEvent.new({ event_data: event_data })
        )
      end
      # Sends <tt>CallVendorRequest</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#callvendorrequest
      # @param vendor_name [String] <tt>vendorName</tt> field
      # @param request_type [String] <tt>requestType</tt> field
      # @param request_data [Hash, nil] <tt>requestData</tt> field
      # @return [Future<Responses::CallVendorRequest>]
      def call_vendor_request(vendor_name:, request_type:, request_data: nil)
        send_request(
          Requests::CallVendorRequest.new(
            {
              vendor_name: vendor_name,
              request_type: request_type,
              request_data: request_data
            }
          )
        )
      end
      # Sends <tt>GetHotkeyList</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#gethotkeylist
      # @return [Future<Responses::GetHotkeyList>]
      def get_hotkey_list()
        send_request(Requests::GetHotkeyList.new({}))
      end
      # Sends <tt>TriggerHotkeyByName</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#triggerhotkeybyname
      # @param hotkey_name [String] <tt>hotkeyName</tt> field
      # @return [Future<Responses::TriggerHotkeyByName>]
      def trigger_hotkey_by_name(hotkey_name:)
        send_request(
          Requests::TriggerHotkeyByName.new({ hotkey_name: hotkey_name })
        )
      end
      # Sends <tt>TriggerHotkeyByKeySequence</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#triggerhotkeybykeysequence
      # @param key_id [String, nil] <tt>keyId</tt> field
      # @param key_modifiers [Hash, nil] <tt>keyModifiers</tt> field
      # @return [Future<Responses::TriggerHotkeyByKeySequence>]
      def trigger_hotkey_by_key_sequence(key_id: nil, key_modifiers: nil)
        send_request(
          Requests::TriggerHotkeyByKeySequence.new(
            { key_id: key_id, key_modifiers: key_modifiers }
          )
        )
      end
      # Sends <tt>Sleep</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#sleep
      # @param sleep_millis [Numeric] <tt>sleepMillis</tt> field
      # @param sleep_frames [Numeric] <tt>sleepFrames</tt> field
      # @return [Future<Responses::Sleep>]
      def sleep(sleep_millis:, sleep_frames:)
        send_request(
          Requests::Sleep.new(
            { sleep_millis: sleep_millis, sleep_frames: sleep_frames }
          )
        )
      end
      # Sends <tt>GetInputList</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getinputlist
      # @param input_kind [String, nil] <tt>inputKind</tt> field
      # @return [Future<Responses::GetInputList>]
      def get_input_list(input_kind: nil)
        send_request(Requests::GetInputList.new({ input_kind: input_kind }))
      end
      # Sends <tt>GetInputKindList</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getinputkindlist
      # @param unversioned [Boolean, nil] <tt>unversioned</tt> field
      # @return [Future<Responses::GetInputKindList>]
      def get_input_kind_list(unversioned: nil)
        send_request(
          Requests::GetInputKindList.new({ unversioned: unversioned })
        )
      end
      # Sends <tt>GetSpecialInputs</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getspecialinputs
      # @return [Future<Responses::GetSpecialInputs>]
      def get_special_inputs()
        send_request(Requests::GetSpecialInputs.new({}))
      end
      # Sends <tt>CreateInput</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#createinput
      # @param scene_name [String] <tt>sceneName</tt> field
      # @param input_name [String] <tt>inputName</tt> field
      # @param input_kind [String] <tt>inputKind</tt> field
      # @param input_settings [Hash, nil] <tt>inputSettings</tt> field
      # @param scene_item_enabled [Boolean, nil] <tt>sceneItemEnabled</tt> field
      # @return [Future<Responses::CreateInput>]
      def create_input(
        scene_name:,
        input_name:,
        input_kind:,
        input_settings: nil,
        scene_item_enabled: nil
      )
        send_request(
          Requests::CreateInput.new(
            {
              scene_name: scene_name,
              input_name: input_name,
              input_kind: input_kind,
              input_settings: input_settings,
              scene_item_enabled: scene_item_enabled
            }
          )
        )
      end
      # Sends <tt>RemoveInput</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#removeinput
      # @param input_name [String] <tt>inputName</tt> field
      # @return [Future<Responses::RemoveInput>]
      def remove_input(input_name:)
        send_request(Requests::RemoveInput.new({ input_name: input_name }))
      end
      # Sends <tt>SetInputName</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setinputname
      # @param input_name [String] <tt>inputName</tt> field
      # @param new_input_name [String] <tt>newInputName</tt> field
      # @return [Future<Responses::SetInputName>]
      def set_input_name(input_name:, new_input_name:)
        send_request(
          Requests::SetInputName.new(
            { input_name: input_name, new_input_name: new_input_name }
          )
        )
      end
      # Sends <tt>GetInputDefaultSettings</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getinputdefaultsettings
      # @param input_kind [String] <tt>inputKind</tt> field
      # @return [Future<Responses::GetInputDefaultSettings>]
      def get_input_default_settings(input_kind:)
        send_request(
          Requests::GetInputDefaultSettings.new({ input_kind: input_kind })
        )
      end
      # Sends <tt>GetInputSettings</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getinputsettings
      # @param input_name [String] <tt>inputName</tt> field
      # @return [Future<Responses::GetInputSettings>]
      def get_input_settings(input_name:)
        send_request(Requests::GetInputSettings.new({ input_name: input_name }))
      end
      # Sends <tt>SetInputSettings</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setinputsettings
      # @param input_name [String] <tt>inputName</tt> field
      # @param input_settings [Hash] <tt>inputSettings</tt> field
      # @param overlay [Boolean, nil] <tt>overlay</tt> field
      # @return [Future<Responses::SetInputSettings>]
      def set_input_settings(input_name:, input_settings:, overlay: nil)
        send_request(
          Requests::SetInputSettings.new(
            {
              input_name: input_name,
              input_settings: input_settings,
              overlay: overlay
            }
          )
        )
      end
      # Sends <tt>GetInputMute</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getinputmute
      # @param input_name [String] <tt>inputName</tt> field
      # @return [Future<Responses::GetInputMute>]
      def get_input_mute(input_name:)
        send_request(Requests::GetInputMute.new({ input_name: input_name }))
      end
      # Sends <tt>SetInputMute</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setinputmute
      # @param input_name [String] <tt>inputName</tt> field
      # @param input_muted [Boolean] <tt>inputMuted</tt> field
      # @return [Future<Responses::SetInputMute>]
      def set_input_mute(input_name:, input_muted:)
        send_request(
          Requests::SetInputMute.new(
            { input_name: input_name, input_muted: input_muted }
          )
        )
      end
      # Sends <tt>ToggleInputMute</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#toggleinputmute
      # @param input_name [String] <tt>inputName</tt> field
      # @return [Future<Responses::ToggleInputMute>]
      def toggle_input_mute(input_name:)
        send_request(Requests::ToggleInputMute.new({ input_name: input_name }))
      end
      # Sends <tt>GetInputVolume</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getinputvolume
      # @param input_name [String] <tt>inputName</tt> field
      # @return [Future<Responses::GetInputVolume>]
      def get_input_volume(input_name:)
        send_request(Requests::GetInputVolume.new({ input_name: input_name }))
      end
      # Sends <tt>SetInputVolume</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setinputvolume
      # @param input_name [String] <tt>inputName</tt> field
      # @param input_volume_mul [Numeric, nil] <tt>inputVolumeMul</tt> field
      # @param input_volume_db [Numeric, nil] <tt>inputVolumeDb</tt> field
      # @return [Future<Responses::SetInputVolume>]
      def set_input_volume(
        input_name:,
        input_volume_mul: nil,
        input_volume_db: nil
      )
        send_request(
          Requests::SetInputVolume.new(
            {
              input_name: input_name,
              input_volume_mul: input_volume_mul,
              input_volume_db: input_volume_db
            }
          )
        )
      end
      # Sends <tt>GetInputAudioBalance</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getinputaudiobalance
      # @param input_name [String] <tt>inputName</tt> field
      # @return [Future<Responses::GetInputAudioBalance>]
      def get_input_audio_balance(input_name:)
        send_request(
          Requests::GetInputAudioBalance.new({ input_name: input_name })
        )
      end
      # Sends <tt>SetInputAudioBalance</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setinputaudiobalance
      # @param input_name [String] <tt>inputName</tt> field
      # @param input_audio_balance [Numeric] <tt>inputAudioBalance</tt> field
      # @return [Future<Responses::SetInputAudioBalance>]
      def set_input_audio_balance(input_name:, input_audio_balance:)
        send_request(
          Requests::SetInputAudioBalance.new(
            { input_name: input_name, input_audio_balance: input_audio_balance }
          )
        )
      end
      # Sends <tt>GetInputAudioSyncOffset</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getinputaudiosyncoffset
      # @param input_name [String] <tt>inputName</tt> field
      # @return [Future<Responses::GetInputAudioSyncOffset>]
      def get_input_audio_sync_offset(input_name:)
        send_request(
          Requests::GetInputAudioSyncOffset.new({ input_name: input_name })
        )
      end
      # Sends <tt>SetInputAudioSyncOffset</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setinputaudiosyncoffset
      # @param input_name [String] <tt>inputName</tt> field
      # @param input_audio_sync_offset [Numeric] <tt>inputAudioSyncOffset</tt> field
      # @return [Future<Responses::SetInputAudioSyncOffset>]
      def set_input_audio_sync_offset(input_name:, input_audio_sync_offset:)
        send_request(
          Requests::SetInputAudioSyncOffset.new(
            {
              input_name: input_name,
              input_audio_sync_offset: input_audio_sync_offset
            }
          )
        )
      end
      # Sends <tt>GetInputAudioMonitorType</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getinputaudiomonitortype
      # @param input_name [String] <tt>inputName</tt> field
      # @return [Future<Responses::GetInputAudioMonitorType>]
      def get_input_audio_monitor_type(input_name:)
        send_request(
          Requests::GetInputAudioMonitorType.new({ input_name: input_name })
        )
      end
      # Sends <tt>SetInputAudioMonitorType</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setinputaudiomonitortype
      # @param input_name [String] <tt>inputName</tt> field
      # @param monitor_type [String] <tt>monitorType</tt> field
      # @return [Future<Responses::SetInputAudioMonitorType>]
      def set_input_audio_monitor_type(input_name:, monitor_type:)
        send_request(
          Requests::SetInputAudioMonitorType.new(
            { input_name: input_name, monitor_type: monitor_type }
          )
        )
      end
      # Sends <tt>GetInputAudioTracks</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getinputaudiotracks
      # @param input_name [String] <tt>inputName</tt> field
      # @return [Future<Responses::GetInputAudioTracks>]
      def get_input_audio_tracks(input_name:)
        send_request(
          Requests::GetInputAudioTracks.new({ input_name: input_name })
        )
      end
      # Sends <tt>SetInputAudioTracks</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setinputaudiotracks
      # @param input_name [String] <tt>inputName</tt> field
      # @param input_audio_tracks [Hash] <tt>inputAudioTracks</tt> field
      # @return [Future<Responses::SetInputAudioTracks>]
      def set_input_audio_tracks(input_name:, input_audio_tracks:)
        send_request(
          Requests::SetInputAudioTracks.new(
            { input_name: input_name, input_audio_tracks: input_audio_tracks }
          )
        )
      end
      # Sends <tt>GetInputPropertiesListPropertyItems</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getinputpropertieslistpropertyitems
      # @param input_name [String] <tt>inputName</tt> field
      # @param property_name [String] <tt>propertyName</tt> field
      # @return [Future<Responses::GetInputPropertiesListPropertyItems>]
      def get_input_properties_list_property_items(input_name:, property_name:)
        send_request(
          Requests::GetInputPropertiesListPropertyItems.new(
            { input_name: input_name, property_name: property_name }
          )
        )
      end
      # Sends <tt>PressInputPropertiesButton</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#pressinputpropertiesbutton
      # @param input_name [String] <tt>inputName</tt> field
      # @param property_name [String] <tt>propertyName</tt> field
      # @return [Future<Responses::PressInputPropertiesButton>]
      def press_input_properties_button(input_name:, property_name:)
        send_request(
          Requests::PressInputPropertiesButton.new(
            { input_name: input_name, property_name: property_name }
          )
        )
      end
      # Sends <tt>GetMediaInputStatus</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getmediainputstatus
      # @param input_name [String] <tt>inputName</tt> field
      # @return [Future<Responses::GetMediaInputStatus>]
      def get_media_input_status(input_name:)
        send_request(
          Requests::GetMediaInputStatus.new({ input_name: input_name })
        )
      end
      # Sends <tt>SetMediaInputCursor</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setmediainputcursor
      # @param input_name [String] <tt>inputName</tt> field
      # @param media_cursor [Numeric] <tt>mediaCursor</tt> field
      # @return [Future<Responses::SetMediaInputCursor>]
      def set_media_input_cursor(input_name:, media_cursor:)
        send_request(
          Requests::SetMediaInputCursor.new(
            { input_name: input_name, media_cursor: media_cursor }
          )
        )
      end
      # Sends <tt>OffsetMediaInputCursor</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#offsetmediainputcursor
      # @param input_name [String] <tt>inputName</tt> field
      # @param media_cursor_offset [Numeric] <tt>mediaCursorOffset</tt> field
      # @return [Future<Responses::OffsetMediaInputCursor>]
      def offset_media_input_cursor(input_name:, media_cursor_offset:)
        send_request(
          Requests::OffsetMediaInputCursor.new(
            { input_name: input_name, media_cursor_offset: media_cursor_offset }
          )
        )
      end
      # Sends <tt>TriggerMediaInputAction</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#triggermediainputaction
      # @param input_name [String] <tt>inputName</tt> field
      # @param media_action [String] <tt>mediaAction</tt> field
      # @return [Future<Responses::TriggerMediaInputAction>]
      def trigger_media_input_action(input_name:, media_action:)
        send_request(
          Requests::TriggerMediaInputAction.new(
            { input_name: input_name, media_action: media_action }
          )
        )
      end
      # Sends <tt>GetVirtualCamStatus</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getvirtualcamstatus
      # @return [Future<Responses::GetVirtualCamStatus>]
      def get_virtual_cam_status()
        send_request(Requests::GetVirtualCamStatus.new({}))
      end
      # Sends <tt>ToggleVirtualCam</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#togglevirtualcam
      # @return [Future<Responses::ToggleVirtualCam>]
      def toggle_virtual_cam()
        send_request(Requests::ToggleVirtualCam.new({}))
      end
      # Sends <tt>StartVirtualCam</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#startvirtualcam
      # @return [Future<Responses::StartVirtualCam>]
      def start_virtual_cam()
        send_request(Requests::StartVirtualCam.new({}))
      end
      # Sends <tt>StopVirtualCam</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#stopvirtualcam
      # @return [Future<Responses::StopVirtualCam>]
      def stop_virtual_cam()
        send_request(Requests::StopVirtualCam.new({}))
      end
      # Sends <tt>GetReplayBufferStatus</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getreplaybufferstatus
      # @return [Future<Responses::GetReplayBufferStatus>]
      def get_replay_buffer_status()
        send_request(Requests::GetReplayBufferStatus.new({}))
      end
      # Sends <tt>ToggleReplayBuffer</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#togglereplaybuffer
      # @return [Future<Responses::ToggleReplayBuffer>]
      def toggle_replay_buffer()
        send_request(Requests::ToggleReplayBuffer.new({}))
      end
      # Sends <tt>StartReplayBuffer</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#startreplaybuffer
      # @return [Future<Responses::StartReplayBuffer>]
      def start_replay_buffer()
        send_request(Requests::StartReplayBuffer.new({}))
      end
      # Sends <tt>StopReplayBuffer</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#stopreplaybuffer
      # @return [Future<Responses::StopReplayBuffer>]
      def stop_replay_buffer()
        send_request(Requests::StopReplayBuffer.new({}))
      end
      # Sends <tt>SaveReplayBuffer</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#savereplaybuffer
      # @return [Future<Responses::SaveReplayBuffer>]
      def save_replay_buffer()
        send_request(Requests::SaveReplayBuffer.new({}))
      end
      # Sends <tt>GetLastReplayBufferReplay</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getlastreplaybufferreplay
      # @return [Future<Responses::GetLastReplayBufferReplay>]
      def get_last_replay_buffer_replay()
        send_request(Requests::GetLastReplayBufferReplay.new({}))
      end
      # Sends <tt>GetRecordStatus</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getrecordstatus
      # @return [Future<Responses::GetRecordStatus>]
      def get_record_status()
        send_request(Requests::GetRecordStatus.new({}))
      end
      # Sends <tt>ToggleRecord</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#togglerecord
      # @return [Future<Responses::ToggleRecord>]
      def toggle_record()
        send_request(Requests::ToggleRecord.new({}))
      end
      # Sends <tt>StartRecord</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#startrecord
      # @return [Future<Responses::StartRecord>]
      def start_record()
        send_request(Requests::StartRecord.new({}))
      end
      # Sends <tt>StopRecord</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#stoprecord
      # @return [Future<Responses::StopRecord>]
      def stop_record()
        send_request(Requests::StopRecord.new({}))
      end
      # Sends <tt>ToggleRecordPause</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#togglerecordpause
      # @return [Future<Responses::ToggleRecordPause>]
      def toggle_record_pause()
        send_request(Requests::ToggleRecordPause.new({}))
      end
      # Sends <tt>PauseRecord</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#pauserecord
      # @return [Future<Responses::PauseRecord>]
      def pause_record()
        send_request(Requests::PauseRecord.new({}))
      end
      # Sends <tt>ResumeRecord</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#resumerecord
      # @return [Future<Responses::ResumeRecord>]
      def resume_record()
        send_request(Requests::ResumeRecord.new({}))
      end
      # Sends <tt>GetSceneItemList</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getsceneitemlist
      # @param scene_name [String] <tt>sceneName</tt> field
      # @return [Future<Responses::GetSceneItemList>]
      def get_scene_item_list(scene_name:)
        send_request(Requests::GetSceneItemList.new({ scene_name: scene_name }))
      end
      # Sends <tt>GetGroupItemList</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getgroupitemlist
      # @param scene_name [String] <tt>sceneName</tt> field
      # @return [Future<Responses::GetGroupItemList>]
      def get_group_item_list(scene_name:)
        send_request(Requests::GetGroupItemList.new({ scene_name: scene_name }))
      end
      # Sends <tt>GetSceneItemId</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getsceneitemid
      # @param scene_name [String] <tt>sceneName</tt> field
      # @param source_name [String] <tt>sourceName</tt> field
      # @param search_offset [Numeric, nil] <tt>searchOffset</tt> field
      # @return [Future<Responses::GetSceneItemId>]
      def get_scene_item_id(scene_name:, source_name:, search_offset: nil)
        send_request(
          Requests::GetSceneItemId.new(
            {
              scene_name: scene_name,
              source_name: source_name,
              search_offset: search_offset
            }
          )
        )
      end
      # Sends <tt>CreateSceneItem</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#createsceneitem
      # @param scene_name [String] <tt>sceneName</tt> field
      # @param source_name [String] <tt>sourceName</tt> field
      # @param scene_item_enabled [Boolean, nil] <tt>sceneItemEnabled</tt> field
      # @return [Future<Responses::CreateSceneItem>]
      def create_scene_item(scene_name:, source_name:, scene_item_enabled: nil)
        send_request(
          Requests::CreateSceneItem.new(
            {
              scene_name: scene_name,
              source_name: source_name,
              scene_item_enabled: scene_item_enabled
            }
          )
        )
      end
      # Sends <tt>RemoveSceneItem</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#removesceneitem
      # @param scene_name [String] <tt>sceneName</tt> field
      # @param scene_item_id [Numeric] <tt>sceneItemId</tt> field
      # @return [Future<Responses::RemoveSceneItem>]
      def remove_scene_item(scene_name:, scene_item_id:)
        send_request(
          Requests::RemoveSceneItem.new(
            { scene_name: scene_name, scene_item_id: scene_item_id }
          )
        )
      end
      # Sends <tt>DuplicateSceneItem</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#duplicatesceneitem
      # @param scene_name [String] <tt>sceneName</tt> field
      # @param scene_item_id [Numeric] <tt>sceneItemId</tt> field
      # @param destination_scene_name [String, nil] <tt>destinationSceneName</tt> field
      # @return [Future<Responses::DuplicateSceneItem>]
      def duplicate_scene_item(
        scene_name:,
        scene_item_id:,
        destination_scene_name: nil
      )
        send_request(
          Requests::DuplicateSceneItem.new(
            {
              scene_name: scene_name,
              scene_item_id: scene_item_id,
              destination_scene_name: destination_scene_name
            }
          )
        )
      end
      # Sends <tt>GetSceneItemTransform</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getsceneitemtransform
      # @param scene_name [String] <tt>sceneName</tt> field
      # @param scene_item_id [Numeric] <tt>sceneItemId</tt> field
      # @return [Future<Responses::GetSceneItemTransform>]
      def get_scene_item_transform(scene_name:, scene_item_id:)
        send_request(
          Requests::GetSceneItemTransform.new(
            { scene_name: scene_name, scene_item_id: scene_item_id }
          )
        )
      end
      # Sends <tt>SetSceneItemTransform</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setsceneitemtransform
      # @param scene_name [String] <tt>sceneName</tt> field
      # @param scene_item_id [Numeric] <tt>sceneItemId</tt> field
      # @param scene_item_transform [Hash] <tt>sceneItemTransform</tt> field
      # @return [Future<Responses::SetSceneItemTransform>]
      def set_scene_item_transform(
        scene_name:,
        scene_item_id:,
        scene_item_transform:
      )
        send_request(
          Requests::SetSceneItemTransform.new(
            {
              scene_name: scene_name,
              scene_item_id: scene_item_id,
              scene_item_transform: scene_item_transform
            }
          )
        )
      end
      # Sends <tt>GetSceneItemEnabled</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getsceneitemenabled
      # @param scene_name [String] <tt>sceneName</tt> field
      # @param scene_item_id [Numeric] <tt>sceneItemId</tt> field
      # @return [Future<Responses::GetSceneItemEnabled>]
      def get_scene_item_enabled(scene_name:, scene_item_id:)
        send_request(
          Requests::GetSceneItemEnabled.new(
            { scene_name: scene_name, scene_item_id: scene_item_id }
          )
        )
      end
      # Sends <tt>SetSceneItemEnabled</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setsceneitemenabled
      # @param scene_name [String] <tt>sceneName</tt> field
      # @param scene_item_id [Numeric] <tt>sceneItemId</tt> field
      # @param scene_item_enabled [Boolean] <tt>sceneItemEnabled</tt> field
      # @return [Future<Responses::SetSceneItemEnabled>]
      def set_scene_item_enabled(
        scene_name:,
        scene_item_id:,
        scene_item_enabled:
      )
        send_request(
          Requests::SetSceneItemEnabled.new(
            {
              scene_name: scene_name,
              scene_item_id: scene_item_id,
              scene_item_enabled: scene_item_enabled
            }
          )
        )
      end
      # Sends <tt>GetSceneItemLocked</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getsceneitemlocked
      # @param scene_name [String] <tt>sceneName</tt> field
      # @param scene_item_id [Numeric] <tt>sceneItemId</tt> field
      # @return [Future<Responses::GetSceneItemLocked>]
      def get_scene_item_locked(scene_name:, scene_item_id:)
        send_request(
          Requests::GetSceneItemLocked.new(
            { scene_name: scene_name, scene_item_id: scene_item_id }
          )
        )
      end
      # Sends <tt>SetSceneItemLocked</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setsceneitemlocked
      # @param scene_name [String] <tt>sceneName</tt> field
      # @param scene_item_id [Numeric] <tt>sceneItemId</tt> field
      # @param scene_item_locked [Boolean] <tt>sceneItemLocked</tt> field
      # @return [Future<Responses::SetSceneItemLocked>]
      def set_scene_item_locked(scene_name:, scene_item_id:, scene_item_locked:)
        send_request(
          Requests::SetSceneItemLocked.new(
            {
              scene_name: scene_name,
              scene_item_id: scene_item_id,
              scene_item_locked: scene_item_locked
            }
          )
        )
      end
      # Sends <tt>GetSceneItemIndex</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getsceneitemindex
      # @param scene_name [String] <tt>sceneName</tt> field
      # @param scene_item_id [Numeric] <tt>sceneItemId</tt> field
      # @return [Future<Responses::GetSceneItemIndex>]
      def get_scene_item_index(scene_name:, scene_item_id:)
        send_request(
          Requests::GetSceneItemIndex.new(
            { scene_name: scene_name, scene_item_id: scene_item_id }
          )
        )
      end
      # Sends <tt>SetSceneItemIndex</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setsceneitemindex
      # @param scene_name [String] <tt>sceneName</tt> field
      # @param scene_item_id [Numeric] <tt>sceneItemId</tt> field
      # @param scene_item_index [Numeric] <tt>sceneItemIndex</tt> field
      # @return [Future<Responses::SetSceneItemIndex>]
      def set_scene_item_index(scene_name:, scene_item_id:, scene_item_index:)
        send_request(
          Requests::SetSceneItemIndex.new(
            {
              scene_name: scene_name,
              scene_item_id: scene_item_id,
              scene_item_index: scene_item_index
            }
          )
        )
      end
      # Sends <tt>GetSceneItemBlendMode</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getsceneitemblendmode
      # @param scene_name [String] <tt>sceneName</tt> field
      # @param scene_item_id [Numeric] <tt>sceneItemId</tt> field
      # @return [Future<Responses::GetSceneItemBlendMode>]
      def get_scene_item_blend_mode(scene_name:, scene_item_id:)
        send_request(
          Requests::GetSceneItemBlendMode.new(
            { scene_name: scene_name, scene_item_id: scene_item_id }
          )
        )
      end
      # Sends <tt>SetSceneItemBlendMode</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setsceneitemblendmode
      # @param scene_name [String] <tt>sceneName</tt> field
      # @param scene_item_id [Numeric] <tt>sceneItemId</tt> field
      # @param scene_item_blend_mode [String] <tt>sceneItemBlendMode</tt> field
      # @return [Future<Responses::SetSceneItemBlendMode>]
      def set_scene_item_blend_mode(
        scene_name:,
        scene_item_id:,
        scene_item_blend_mode:
      )
        send_request(
          Requests::SetSceneItemBlendMode.new(
            {
              scene_name: scene_name,
              scene_item_id: scene_item_id,
              scene_item_blend_mode: scene_item_blend_mode
            }
          )
        )
      end
      # Sends <tt>GetSceneList</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getscenelist
      # @return [Future<Responses::GetSceneList>]
      def get_scene_list()
        send_request(Requests::GetSceneList.new({}))
      end
      # Sends <tt>GetGroupList</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getgrouplist
      # @return [Future<Responses::GetGroupList>]
      def get_group_list()
        send_request(Requests::GetGroupList.new({}))
      end
      # Sends <tt>GetCurrentProgramScene</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getcurrentprogramscene
      # @return [Future<Responses::GetCurrentProgramScene>]
      def get_current_program_scene()
        send_request(Requests::GetCurrentProgramScene.new({}))
      end
      # Sends <tt>SetCurrentProgramScene</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setcurrentprogramscene
      # @param scene_name [String] <tt>sceneName</tt> field
      # @return [Future<Responses::SetCurrentProgramScene>]
      def set_current_program_scene(scene_name:)
        send_request(
          Requests::SetCurrentProgramScene.new({ scene_name: scene_name })
        )
      end
      # Sends <tt>GetCurrentPreviewScene</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getcurrentpreviewscene
      # @return [Future<Responses::GetCurrentPreviewScene>]
      def get_current_preview_scene()
        send_request(Requests::GetCurrentPreviewScene.new({}))
      end
      # Sends <tt>SetCurrentPreviewScene</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setcurrentpreviewscene
      # @param scene_name [String] <tt>sceneName</tt> field
      # @return [Future<Responses::SetCurrentPreviewScene>]
      def set_current_preview_scene(scene_name:)
        send_request(
          Requests::SetCurrentPreviewScene.new({ scene_name: scene_name })
        )
      end
      # Sends <tt>CreateScene</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#createscene
      # @param scene_name [String] <tt>sceneName</tt> field
      # @return [Future<Responses::CreateScene>]
      def create_scene(scene_name:)
        send_request(Requests::CreateScene.new({ scene_name: scene_name }))
      end
      # Sends <tt>RemoveScene</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#removescene
      # @param scene_name [String] <tt>sceneName</tt> field
      # @return [Future<Responses::RemoveScene>]
      def remove_scene(scene_name:)
        send_request(Requests::RemoveScene.new({ scene_name: scene_name }))
      end
      # Sends <tt>SetSceneName</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setscenename
      # @param scene_name [String] <tt>sceneName</tt> field
      # @param new_scene_name [String] <tt>newSceneName</tt> field
      # @return [Future<Responses::SetSceneName>]
      def set_scene_name(scene_name:, new_scene_name:)
        send_request(
          Requests::SetSceneName.new(
            { scene_name: scene_name, new_scene_name: new_scene_name }
          )
        )
      end
      # Sends <tt>GetSceneSceneTransitionOverride</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getscenescenetransitionoverride
      # @param scene_name [String] <tt>sceneName</tt> field
      # @return [Future<Responses::GetSceneSceneTransitionOverride>]
      def get_scene_scene_transition_override(scene_name:)
        send_request(
          Requests::GetSceneSceneTransitionOverride.new(
            { scene_name: scene_name }
          )
        )
      end
      # Sends <tt>SetSceneSceneTransitionOverride</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setscenescenetransitionoverride
      # @param scene_name [String] <tt>sceneName</tt> field
      # @param transition_name [String, nil] <tt>transitionName</tt> field
      # @param transition_duration [Numeric, nil] <tt>transitionDuration</tt> field
      # @return [Future<Responses::SetSceneSceneTransitionOverride>]
      def set_scene_scene_transition_override(
        scene_name:,
        transition_name: nil,
        transition_duration: nil
      )
        send_request(
          Requests::SetSceneSceneTransitionOverride.new(
            {
              scene_name: scene_name,
              transition_name: transition_name,
              transition_duration: transition_duration
            }
          )
        )
      end
      # Sends <tt>GetSourceActive</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getsourceactive
      # @param source_name [String] <tt>sourceName</tt> field
      # @return [Future<Responses::GetSourceActive>]
      def get_source_active(source_name:)
        send_request(
          Requests::GetSourceActive.new({ source_name: source_name })
        )
      end
      # Sends <tt>GetSourceScreenshot</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getsourcescreenshot
      # @param source_name [String] <tt>sourceName</tt> field
      # @param image_format [String] <tt>imageFormat</tt> field
      # @param image_width [Numeric, nil] <tt>imageWidth</tt> field
      # @param image_height [Numeric, nil] <tt>imageHeight</tt> field
      # @param image_compression_quality [Numeric, nil] <tt>imageCompressionQuality</tt> field
      # @return [Future<Responses::GetSourceScreenshot>]
      def get_source_screenshot(
        source_name:,
        image_format:,
        image_width: nil,
        image_height: nil,
        image_compression_quality: nil
      )
        send_request(
          Requests::GetSourceScreenshot.new(
            {
              source_name: source_name,
              image_format: image_format,
              image_width: image_width,
              image_height: image_height,
              image_compression_quality: image_compression_quality
            }
          )
        )
      end
      # Sends <tt>SaveSourceScreenshot</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#savesourcescreenshot
      # @param source_name [String] <tt>sourceName</tt> field
      # @param image_format [String] <tt>imageFormat</tt> field
      # @param image_file_path [String] <tt>imageFilePath</tt> field
      # @param image_width [Numeric, nil] <tt>imageWidth</tt> field
      # @param image_height [Numeric, nil] <tt>imageHeight</tt> field
      # @param image_compression_quality [Numeric, nil] <tt>imageCompressionQuality</tt> field
      # @return [Future<Responses::SaveSourceScreenshot>]
      def save_source_screenshot(
        source_name:,
        image_format:,
        image_file_path:,
        image_width: nil,
        image_height: nil,
        image_compression_quality: nil
      )
        send_request(
          Requests::SaveSourceScreenshot.new(
            {
              source_name: source_name,
              image_format: image_format,
              image_file_path: image_file_path,
              image_width: image_width,
              image_height: image_height,
              image_compression_quality: image_compression_quality
            }
          )
        )
      end
      # Sends <tt>GetStreamStatus</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getstreamstatus
      # @return [Future<Responses::GetStreamStatus>]
      def get_stream_status()
        send_request(Requests::GetStreamStatus.new({}))
      end
      # Sends <tt>ToggleStream</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#togglestream
      # @return [Future<Responses::ToggleStream>]
      def toggle_stream()
        send_request(Requests::ToggleStream.new({}))
      end
      # Sends <tt>StartStream</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#startstream
      # @return [Future<Responses::StartStream>]
      def start_stream()
        send_request(Requests::StartStream.new({}))
      end
      # Sends <tt>StopStream</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#stopstream
      # @return [Future<Responses::StopStream>]
      def stop_stream()
        send_request(Requests::StopStream.new({}))
      end
      # Sends <tt>SendStreamCaption</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#sendstreamcaption
      # @param caption_text [String] <tt>captionText</tt> field
      # @return [Future<Responses::SendStreamCaption>]
      def send_stream_caption(caption_text:)
        send_request(
          Requests::SendStreamCaption.new({ caption_text: caption_text })
        )
      end
      # Sends <tt>GetTransitionKindList</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#gettransitionkindlist
      # @return [Future<Responses::GetTransitionKindList>]
      def get_transition_kind_list()
        send_request(Requests::GetTransitionKindList.new({}))
      end
      # Sends <tt>GetSceneTransitionList</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getscenetransitionlist
      # @return [Future<Responses::GetSceneTransitionList>]
      def get_scene_transition_list()
        send_request(Requests::GetSceneTransitionList.new({}))
      end
      # Sends <tt>GetCurrentSceneTransition</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getcurrentscenetransition
      # @return [Future<Responses::GetCurrentSceneTransition>]
      def get_current_scene_transition()
        send_request(Requests::GetCurrentSceneTransition.new({}))
      end
      # Sends <tt>SetCurrentSceneTransition</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setcurrentscenetransition
      # @param transition_name [String] <tt>transitionName</tt> field
      # @return [Future<Responses::SetCurrentSceneTransition>]
      def set_current_scene_transition(transition_name:)
        send_request(
          Requests::SetCurrentSceneTransition.new(
            { transition_name: transition_name }
          )
        )
      end
      # Sends <tt>SetCurrentSceneTransitionDuration</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setcurrentscenetransitionduration
      # @param transition_duration [Numeric] <tt>transitionDuration</tt> field
      # @return [Future<Responses::SetCurrentSceneTransitionDuration>]
      def set_current_scene_transition_duration(transition_duration:)
        send_request(
          Requests::SetCurrentSceneTransitionDuration.new(
            { transition_duration: transition_duration }
          )
        )
      end
      # Sends <tt>SetCurrentSceneTransitionSettings</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setcurrentscenetransitionsettings
      # @param transition_settings [Hash] <tt>transitionSettings</tt> field
      # @param overlay [Boolean, nil] <tt>overlay</tt> field
      # @return [Future<Responses::SetCurrentSceneTransitionSettings>]
      def set_current_scene_transition_settings(
        transition_settings:,
        overlay: nil
      )
        send_request(
          Requests::SetCurrentSceneTransitionSettings.new(
            { transition_settings: transition_settings, overlay: overlay }
          )
        )
      end
      # Sends <tt>GetCurrentSceneTransitionCursor</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getcurrentscenetransitioncursor
      # @return [Future<Responses::GetCurrentSceneTransitionCursor>]
      def get_current_scene_transition_cursor()
        send_request(Requests::GetCurrentSceneTransitionCursor.new({}))
      end
      # Sends <tt>TriggerStudioModeTransition</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#triggerstudiomodetransition
      # @return [Future<Responses::TriggerStudioModeTransition>]
      def trigger_studio_mode_transition()
        send_request(Requests::TriggerStudioModeTransition.new({}))
      end
      # Sends <tt>SetTBarPosition</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#settbarposition
      # @param position [Numeric] <tt>position</tt> field
      # @param release [Boolean, nil] <tt>release</tt> field
      # @return [Future<Responses::SetTBarPosition>]
      def set_t_bar_position(position:, release: nil)
        send_request(
          Requests::SetTBarPosition.new(
            { position: position, release: release }
          )
        )
      end
      # Sends <tt>GetStudioModeEnabled</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getstudiomodeenabled
      # @return [Future<Responses::GetStudioModeEnabled>]
      def get_studio_mode_enabled()
        send_request(Requests::GetStudioModeEnabled.new({}))
      end
      # Sends <tt>SetStudioModeEnabled</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setstudiomodeenabled
      # @param studio_mode_enabled [Boolean] <tt>studioModeEnabled</tt> field
      # @return [Future<Responses::SetStudioModeEnabled>]
      def set_studio_mode_enabled(studio_mode_enabled:)
        send_request(
          Requests::SetStudioModeEnabled.new(
            { studio_mode_enabled: studio_mode_enabled }
          )
        )
      end
      # Sends <tt>OpenInputPropertiesDialog</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#openinputpropertiesdialog
      # @param input_name [String] <tt>inputName</tt> field
      # @return [Future<Responses::OpenInputPropertiesDialog>]
      def open_input_properties_dialog(input_name:)
        send_request(
          Requests::OpenInputPropertiesDialog.new({ input_name: input_name })
        )
      end
      # Sends <tt>OpenInputFiltersDialog</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#openinputfiltersdialog
      # @param input_name [String] <tt>inputName</tt> field
      # @return [Future<Responses::OpenInputFiltersDialog>]
      def open_input_filters_dialog(input_name:)
        send_request(
          Requests::OpenInputFiltersDialog.new({ input_name: input_name })
        )
      end
      # Sends <tt>OpenInputInteractDialog</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#openinputinteractdialog
      # @param input_name [String] <tt>inputName</tt> field
      # @return [Future<Responses::OpenInputInteractDialog>]
      def open_input_interact_dialog(input_name:)
        send_request(
          Requests::OpenInputInteractDialog.new({ input_name: input_name })
        )
      end
      # Sends <tt>GetMonitorList</tt> request.
      # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getmonitorlist
      # @return [Future<Responses::GetMonitorList>]
      def get_monitor_list()
        send_request(Requests::GetMonitorList.new({}))
      end
    end # module Request
  end # module Mixins
end
