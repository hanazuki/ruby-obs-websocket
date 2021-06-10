# Generated from <https://raw.githubusercontent.com/Palakis/obs-websocket/4.9.1/docs/generated/comments.json>
# @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md
module OBS::WebSocket::Protocol
  VERSION = "4.9.1"
module Types
  SceneItem = Type.new(name: "SceneItem") do
    def as_ruby(o)
      SceneItem__BASE.as_ruby(o)
    end
    def as_json(o)
      SceneItem__BASE.as_json(o)
    end
  end
  SceneItem__BASE = Types::Object[{"cy"=>{:type=>Types::Numeric, :json_name=>"cy"}, "cx"=>{:type=>Types::Numeric, :json_name=>"cx"}, "alignment"=>{:type=>Types::Numeric, :json_name=>"alignment"}, "name"=>{:type=>Types::String, :json_name=>"name"}, "id"=>{:type=>Types::Integer, :json_name=>"id"}, "render"=>{:type=>Types::Boolean, :json_name=>"render"}, "muted"=>{:type=>Types::Boolean, :json_name=>"muted"}, "locked"=>{:type=>Types::Boolean, :json_name=>"locked"}, "source_cx"=>{:type=>Types::Numeric, :json_name=>"source_cx"}, "source_cy"=>{:type=>Types::Numeric, :json_name=>"source_cy"}, "type"=>{:type=>Types::String, :json_name=>"type"}, "volume"=>{:type=>Types::Numeric, :json_name=>"volume"}, "x"=>{:type=>Types::Numeric, :json_name=>"x"}, "y"=>{:type=>Types::Numeric, :json_name=>"y"}, "parent_group_name"=>{:type=>Types::Optional[Types::String], :json_name=>"parentGroupName"}, "group_children"=>{:type=>Types::Optional[Types::Array[Types::SceneItem]], :json_name=>"groupChildren"}}]
  private_constant :SceneItem__BASE
  SceneItemTransform = Type.new(name: "SceneItemTransform") do
    def as_ruby(o)
      SceneItemTransform__BASE.as_ruby(o)
    end
    def as_json(o)
      SceneItemTransform__BASE.as_json(o)
    end
  end
  SceneItemTransform__BASE = Types::Object[{"position"=>{:type=>Types::Object[{:x=>{:type=>Types::Float, :json_name=>"x"}, :y=>{:type=>Types::Float, :json_name=>"y"}, :alignment=>{:type=>Types::Integer, :json_name=>"alignment"}}], :json_name=>"position"}, "rotation"=>{:type=>Types::Float, :json_name=>"rotation"}, "scale"=>{:type=>Types::Object[{:x=>{:type=>Types::Float, :json_name=>"x"}, :y=>{:type=>Types::Float, :json_name=>"y"}, :filter=>{:type=>Types::String, :json_name=>"filter"}}], :json_name=>"scale"}, "crop"=>{:type=>Types::Object[{:top=>{:type=>Types::Integer, :json_name=>"top"}, :right=>{:type=>Types::Integer, :json_name=>"right"}, :bottom=>{:type=>Types::Integer, :json_name=>"bottom"}, :left=>{:type=>Types::Integer, :json_name=>"left"}}], :json_name=>"crop"}, "visible"=>{:type=>Types::Boolean, :json_name=>"visible"}, "locked"=>{:type=>Types::Boolean, :json_name=>"locked"}, "bounds"=>{:type=>Types::Object[{:type=>{:type=>Types::String, :json_name=>"type"}, :alignment=>{:type=>Types::Integer, :json_name=>"alignment"}, :x=>{:type=>Types::Float, :json_name=>"x"}, :y=>{:type=>Types::Float, :json_name=>"y"}}], :json_name=>"bounds"}, "source_width"=>{:type=>Types::Integer, :json_name=>"sourceWidth"}, "source_height"=>{:type=>Types::Integer, :json_name=>"sourceHeight"}, "width"=>{:type=>Types::Float, :json_name=>"width"}, "height"=>{:type=>Types::Float, :json_name=>"height"}, "parent_group_name"=>{:type=>Types::Optional[Types::String], :json_name=>"parentGroupName"}, "group_children"=>{:type=>Types::Optional[Types::Array[Types::SceneItemTransform]], :json_name=>"groupChildren"}}]
  private_constant :SceneItemTransform__BASE
  OBSStats = Type.new(name: "OBSStats") do
    def as_ruby(o)
      OBSStats__BASE.as_ruby(o)
    end
    def as_json(o)
      OBSStats__BASE.as_json(o)
    end
  end
  OBSStats__BASE = Types::Object[{"fps"=>{:type=>Types::Float, :json_name=>"fps"}, "render_total_frames"=>{:type=>Types::Integer, :json_name=>"render-total-frames"}, "render_missed_frames"=>{:type=>Types::Integer, :json_name=>"render-missed-frames"}, "output_total_frames"=>{:type=>Types::Integer, :json_name=>"output-total-frames"}, "output_skipped_frames"=>{:type=>Types::Integer, :json_name=>"output-skipped-frames"}, "average_frame_time"=>{:type=>Types::Float, :json_name=>"average-frame-time"}, "cpu_usage"=>{:type=>Types::Float, :json_name=>"cpu-usage"}, "memory_usage"=>{:type=>Types::Float, :json_name=>"memory-usage"}, "free_disk_space"=>{:type=>Types::Float, :json_name=>"free-disk-space"}}]
  private_constant :OBSStats__BASE
  Output = Type.new(name: "Output") do
    def as_ruby(o)
      Output__BASE.as_ruby(o)
    end
    def as_json(o)
      Output__BASE.as_json(o)
    end
  end
  Output__BASE = Types::Object[{"name"=>{:type=>Types::String, :json_name=>"name"}, "type"=>{:type=>Types::String, :json_name=>"type"}, "width"=>{:type=>Types::Integer, :json_name=>"width"}, "height"=>{:type=>Types::Integer, :json_name=>"height"}, "flags"=>{:type=>Types::Object[{:raw_value=>{:type=>Types::Integer, :json_name=>"rawValue"}, :audio=>{:type=>Types::Boolean, :json_name=>"audio"}, :video=>{:type=>Types::Boolean, :json_name=>"video"}, :encoded=>{:type=>Types::Boolean, :json_name=>"encoded"}, :multi_track=>{:type=>Types::Boolean, :json_name=>"multiTrack"}, :service=>{:type=>Types::Boolean, :json_name=>"service"}}], :json_name=>"flags"}, "settings"=>{:type=>Types::Object, :json_name=>"settings"}, "active"=>{:type=>Types::Boolean, :json_name=>"active"}, "reconnecting"=>{:type=>Types::Boolean, :json_name=>"reconnecting"}, "congestion"=>{:type=>Types::Float, :json_name=>"congestion"}, "total_frames"=>{:type=>Types::Integer, :json_name=>"totalFrames"}, "dropped_frames"=>{:type=>Types::Integer, :json_name=>"droppedFrames"}, "total_bytes"=>{:type=>Types::Integer, :json_name=>"totalBytes"}}]
  private_constant :Output__BASE
  ScenesCollection = Type.new(name: "ScenesCollection") do
    def as_ruby(o)
      ScenesCollection__BASE.as_ruby(o)
    end
    def as_json(o)
      ScenesCollection__BASE.as_json(o)
    end
  end
  ScenesCollection__BASE = Types::Object[{"sc_name"=>{:type=>Types::String, :json_name=>"sc-name"}}]
  private_constant :ScenesCollection__BASE
  Scene = Type.new(name: "Scene") do
    def as_ruby(o)
      Scene__BASE.as_ruby(o)
    end
    def as_json(o)
      Scene__BASE.as_json(o)
    end
  end
  Scene__BASE = Types::Object[{"name"=>{:type=>Types::String, :json_name=>"name"}, "sources"=>{:type=>Types::Array[Types::SceneItem], :json_name=>"sources"}}]
  private_constant :Scene__BASE
end  # module Types
module Events
  class SwitchScenes < Event
    json_name "SwitchScenes"
    # @!attribute [r] scene_name
    # @return [String] <tt>scene-name</tt> field
    def scene_name; get_field("scene-name", Types::String); end
    # @!attribute [r] sources
    # @return [Array<SceneItem>] <tt>sources</tt> field
    def sources; get_field("sources", Types::Array[Types::SceneItem]); end
  end
  class ScenesChanged < Event
    json_name "ScenesChanged"
    # @!attribute [r] scenes
    # @return [Array<Scene>] <tt>scenes</tt> field
    def scenes; get_field("scenes", Types::Array[Types::Scene]); end
  end
  class SceneCollectionChanged < Event
    json_name "SceneCollectionChanged"
    # @!attribute [r] scene_collection
    # @return [String] <tt>sceneCollection</tt> field
    def scene_collection; get_field("sceneCollection", Types::String); end
  end
  class SceneCollectionListChanged < Event
    json_name "SceneCollectionListChanged"
    # @!attribute [r] scene_collections
    # @return [Array<Hash>] <tt>sceneCollections</tt> field
    def scene_collections; get_field("sceneCollections", Types::Array[Types::Object[{:name=>{:type=>Types::String, :json_name=>"name"}}]]); end
  end
  class SwitchTransition < Event
    json_name "SwitchTransition"
    # @!attribute [r] transition_name
    # @return [String] <tt>transition-name</tt> field
    def transition_name; get_field("transition-name", Types::String); end
  end
  class TransitionListChanged < Event
    json_name "TransitionListChanged"
    # @!attribute [r] transitions
    # @return [Array<Hash>] <tt>transitions</tt> field
    def transitions; get_field("transitions", Types::Array[Types::Object[{:name=>{:type=>Types::String, :json_name=>"name"}}]]); end
  end
  class TransitionDurationChanged < Event
    json_name "TransitionDurationChanged"
    # @!attribute [r] new_duration
    # @return [Integer] <tt>new-duration</tt> field
    def new_duration; get_field("new-duration", Types::Integer); end
  end
  class TransitionBegin < Event
    json_name "TransitionBegin"
    # @!attribute [r] name
    # @return [String] <tt>name</tt> field
    def name; get_field("name", Types::String); end
    # @!attribute [r] type
    # @return [String] <tt>type</tt> field
    def type; get_field("type", Types::String); end
    # @!attribute [r] duration
    # @return [Integer] <tt>duration</tt> field
    def duration; get_field("duration", Types::Integer); end
    # @!attribute [r] from_scene
    # @return [String, nil] <tt>from-scene</tt> field
    def from_scene; get_field("from-scene", Types::Optional[Types::String]); end
    # @!attribute [r] to_scene
    # @return [String] <tt>to-scene</tt> field
    def to_scene; get_field("to-scene", Types::String); end
  end
  class TransitionEnd < Event
    json_name "TransitionEnd"
    # @!attribute [r] name
    # @return [String] <tt>name</tt> field
    def name; get_field("name", Types::String); end
    # @!attribute [r] type
    # @return [String] <tt>type</tt> field
    def type; get_field("type", Types::String); end
    # @!attribute [r] duration
    # @return [Integer] <tt>duration</tt> field
    def duration; get_field("duration", Types::Integer); end
    # @!attribute [r] to_scene
    # @return [String] <tt>to-scene</tt> field
    def to_scene; get_field("to-scene", Types::String); end
  end
  class TransitionVideoEnd < Event
    json_name "TransitionVideoEnd"
    # @!attribute [r] name
    # @return [String] <tt>name</tt> field
    def name; get_field("name", Types::String); end
    # @!attribute [r] type
    # @return [String] <tt>type</tt> field
    def type; get_field("type", Types::String); end
    # @!attribute [r] duration
    # @return [Integer] <tt>duration</tt> field
    def duration; get_field("duration", Types::Integer); end
    # @!attribute [r] from_scene
    # @return [String, nil] <tt>from-scene</tt> field
    def from_scene; get_field("from-scene", Types::Optional[Types::String]); end
    # @!attribute [r] to_scene
    # @return [String] <tt>to-scene</tt> field
    def to_scene; get_field("to-scene", Types::String); end
  end
  class ProfileChanged < Event
    json_name "ProfileChanged"
    # @!attribute [r] profile
    # @return [String] <tt>profile</tt> field
    def profile; get_field("profile", Types::String); end
  end
  class ProfileListChanged < Event
    json_name "ProfileListChanged"
    # @!attribute [r] profiles
    # @return [Array<Hash>] <tt>profiles</tt> field
    def profiles; get_field("profiles", Types::Array[Types::Object[{:name=>{:type=>Types::String, :json_name=>"name"}}]]); end
  end
  class StreamStarting < Event
    json_name "StreamStarting"
    # @!attribute [r] preview_only
    # @return [Boolean] <tt>preview-only</tt> field
    def preview_only; get_field("preview-only", Types::Boolean); end
  end
  class StreamStarted < Event
    json_name "StreamStarted"
  end
  class StreamStopping < Event
    json_name "StreamStopping"
    # @!attribute [r] preview_only
    # @return [Boolean] <tt>preview-only</tt> field
    def preview_only; get_field("preview-only", Types::Boolean); end
  end
  class StreamStopped < Event
    json_name "StreamStopped"
  end
  class StreamStatus < Event
    json_name "StreamStatus"
    # @!attribute [r] streaming
    # @return [Boolean] <tt>streaming</tt> field
    def streaming; get_field("streaming", Types::Boolean); end
    # @!attribute [r] recording
    # @return [Boolean] <tt>recording</tt> field
    def recording; get_field("recording", Types::Boolean); end
    # @!attribute [r] replay_buffer_active
    # @return [Boolean] <tt>replay-buffer-active</tt> field
    def replay_buffer_active; get_field("replay-buffer-active", Types::Boolean); end
    # @!attribute [r] bytes_per_sec
    # @return [Integer] <tt>bytes-per-sec</tt> field
    def bytes_per_sec; get_field("bytes-per-sec", Types::Integer); end
    # @!attribute [r] kbits_per_sec
    # @return [Integer] <tt>kbits-per-sec</tt> field
    def kbits_per_sec; get_field("kbits-per-sec", Types::Integer); end
    # @!attribute [r] strain
    # @return [Float] <tt>strain</tt> field
    def strain; get_field("strain", Types::Float); end
    # @!attribute [r] total_stream_time
    # @return [Integer] <tt>total-stream-time</tt> field
    def total_stream_time; get_field("total-stream-time", Types::Integer); end
    # @!attribute [r] num_total_frames
    # @return [Integer] <tt>num-total-frames</tt> field
    def num_total_frames; get_field("num-total-frames", Types::Integer); end
    # @!attribute [r] num_dropped_frames
    # @return [Integer] <tt>num-dropped-frames</tt> field
    def num_dropped_frames; get_field("num-dropped-frames", Types::Integer); end
    # @!attribute [r] fps
    # @return [Float] <tt>fps</tt> field
    def fps; get_field("fps", Types::Float); end
    # @!attribute [r] render_total_frames
    # @return [Integer] <tt>render-total-frames</tt> field
    def render_total_frames; get_field("render-total-frames", Types::Integer); end
    # @!attribute [r] render_missed_frames
    # @return [Integer] <tt>render-missed-frames</tt> field
    def render_missed_frames; get_field("render-missed-frames", Types::Integer); end
    # @!attribute [r] output_total_frames
    # @return [Integer] <tt>output-total-frames</tt> field
    def output_total_frames; get_field("output-total-frames", Types::Integer); end
    # @!attribute [r] output_skipped_frames
    # @return [Integer] <tt>output-skipped-frames</tt> field
    def output_skipped_frames; get_field("output-skipped-frames", Types::Integer); end
    # @!attribute [r] average_frame_time
    # @return [Float] <tt>average-frame-time</tt> field
    def average_frame_time; get_field("average-frame-time", Types::Float); end
    # @!attribute [r] cpu_usage
    # @return [Float] <tt>cpu-usage</tt> field
    def cpu_usage; get_field("cpu-usage", Types::Float); end
    # @!attribute [r] memory_usage
    # @return [Float] <tt>memory-usage</tt> field
    def memory_usage; get_field("memory-usage", Types::Float); end
    # @!attribute [r] free_disk_space
    # @return [Float] <tt>free-disk-space</tt> field
    def free_disk_space; get_field("free-disk-space", Types::Float); end
    # @!attribute [r] preview_only
    # @return [Boolean] <tt>preview-only</tt> field
    def preview_only; get_field("preview-only", Types::Boolean); end
  end
  class RecordingStarting < Event
    json_name "RecordingStarting"
  end
  class RecordingStarted < Event
    json_name "RecordingStarted"
    # @!attribute [r] recording_filename
    # @return [String] <tt>recordingFilename</tt> field
    def recording_filename; get_field("recordingFilename", Types::String); end
  end
  class RecordingStopping < Event
    json_name "RecordingStopping"
    # @!attribute [r] recording_filename
    # @return [String] <tt>recordingFilename</tt> field
    def recording_filename; get_field("recordingFilename", Types::String); end
  end
  class RecordingStopped < Event
    json_name "RecordingStopped"
    # @!attribute [r] recording_filename
    # @return [String] <tt>recordingFilename</tt> field
    def recording_filename; get_field("recordingFilename", Types::String); end
  end
  class RecordingPaused < Event
    json_name "RecordingPaused"
  end
  class RecordingResumed < Event
    json_name "RecordingResumed"
  end
  class VirtualCamStarted < Event
    json_name "VirtualCamStarted"
  end
  class VirtualCamStopped < Event
    json_name "VirtualCamStopped"
  end
  class ReplayStarting < Event
    json_name "ReplayStarting"
  end
  class ReplayStarted < Event
    json_name "ReplayStarted"
  end
  class ReplayStopping < Event
    json_name "ReplayStopping"
  end
  class ReplayStopped < Event
    json_name "ReplayStopped"
  end
  class Exiting < Event
    json_name "Exiting"
  end
  class Heartbeat < Event
    json_name "Heartbeat"
    # @!attribute [r] pulse
    # @return [Boolean] <tt>pulse</tt> field
    def pulse; get_field("pulse", Types::Boolean); end
    # @!attribute [r] current_profile
    # @return [String, nil] <tt>current-profile</tt> field
    def current_profile; get_field("current-profile", Types::Optional[Types::String]); end
    # @!attribute [r] current_scene
    # @return [String, nil] <tt>current-scene</tt> field
    def current_scene; get_field("current-scene", Types::Optional[Types::String]); end
    # @!attribute [r] streaming
    # @return [Boolean, nil] <tt>streaming</tt> field
    def streaming; get_field("streaming", Types::Optional[Types::Boolean]); end
    # @!attribute [r] total_stream_time
    # @return [Integer, nil] <tt>total-stream-time</tt> field
    def total_stream_time; get_field("total-stream-time", Types::Optional[Types::Integer]); end
    # @!attribute [r] total_stream_bytes
    # @return [Integer, nil] <tt>total-stream-bytes</tt> field
    def total_stream_bytes; get_field("total-stream-bytes", Types::Optional[Types::Integer]); end
    # @!attribute [r] total_stream_frames
    # @return [Integer, nil] <tt>total-stream-frames</tt> field
    def total_stream_frames; get_field("total-stream-frames", Types::Optional[Types::Integer]); end
    # @!attribute [r] recording
    # @return [Boolean, nil] <tt>recording</tt> field
    def recording; get_field("recording", Types::Optional[Types::Boolean]); end
    # @!attribute [r] total_record_time
    # @return [Integer, nil] <tt>total-record-time</tt> field
    def total_record_time; get_field("total-record-time", Types::Optional[Types::Integer]); end
    # @!attribute [r] total_record_bytes
    # @return [Integer, nil] <tt>total-record-bytes</tt> field
    def total_record_bytes; get_field("total-record-bytes", Types::Optional[Types::Integer]); end
    # @!attribute [r] total_record_frames
    # @return [Integer, nil] <tt>total-record-frames</tt> field
    def total_record_frames; get_field("total-record-frames", Types::Optional[Types::Integer]); end
    # @!attribute [r] stats
    # @return [OBSStats] <tt>stats</tt> field
    def stats; get_field("stats", Types::OBSStats); end
  end
  class BroadcastCustomMessage < Event
    json_name "BroadcastCustomMessage"
    # @!attribute [r] realm
    # @return [String] <tt>realm</tt> field
    def realm; get_field("realm", Types::String); end
    # @!attribute [r] data
    # @return [Hash] <tt>data</tt> field
    def data; get_field("data", Types::Object); end
  end
  class SourceCreated < Event
    json_name "SourceCreated"
    # @!attribute [r] source_name
    # @return [String] <tt>sourceName</tt> field
    def source_name; get_field("sourceName", Types::String); end
    # @!attribute [r] source_type
    # @return [String] <tt>sourceType</tt> field
    def source_type; get_field("sourceType", Types::String); end
    # @!attribute [r] source_kind
    # @return [String] <tt>sourceKind</tt> field
    def source_kind; get_field("sourceKind", Types::String); end
    # @!attribute [r] source_settings
    # @return [Hash] <tt>sourceSettings</tt> field
    def source_settings; get_field("sourceSettings", Types::Object); end
  end
  class SourceDestroyed < Event
    json_name "SourceDestroyed"
    # @!attribute [r] source_name
    # @return [String] <tt>sourceName</tt> field
    def source_name; get_field("sourceName", Types::String); end
    # @!attribute [r] source_type
    # @return [String] <tt>sourceType</tt> field
    def source_type; get_field("sourceType", Types::String); end
    # @!attribute [r] source_kind
    # @return [String] <tt>sourceKind</tt> field
    def source_kind; get_field("sourceKind", Types::String); end
  end
  class SourceVolumeChanged < Event
    json_name "SourceVolumeChanged"
    # @!attribute [r] source_name
    # @return [String] <tt>sourceName</tt> field
    def source_name; get_field("sourceName", Types::String); end
    # @!attribute [r] volume
    # @return [Float] <tt>volume</tt> field
    def volume; get_field("volume", Types::Float); end
    # @!attribute [r] volume_db
    # @return [Float] <tt>volumeDb</tt> field
    def volume_db; get_field("volumeDb", Types::Float); end
  end
  class SourceMuteStateChanged < Event
    json_name "SourceMuteStateChanged"
    # @!attribute [r] source_name
    # @return [String] <tt>sourceName</tt> field
    def source_name; get_field("sourceName", Types::String); end
    # @!attribute [r] muted
    # @return [Boolean] <tt>muted</tt> field
    def muted; get_field("muted", Types::Boolean); end
  end
  class SourceAudioDeactivated < Event
    json_name "SourceAudioDeactivated"
    # @!attribute [r] source_name
    # @return [String] <tt>sourceName</tt> field
    def source_name; get_field("sourceName", Types::String); end
  end
  class SourceAudioActivated < Event
    json_name "SourceAudioActivated"
    # @!attribute [r] source_name
    # @return [String] <tt>sourceName</tt> field
    def source_name; get_field("sourceName", Types::String); end
  end
  class SourceAudioSyncOffsetChanged < Event
    json_name "SourceAudioSyncOffsetChanged"
    # @!attribute [r] source_name
    # @return [String] <tt>sourceName</tt> field
    def source_name; get_field("sourceName", Types::String); end
    # @!attribute [r] sync_offset
    # @return [Integer] <tt>syncOffset</tt> field
    def sync_offset; get_field("syncOffset", Types::Integer); end
  end
  class SourceAudioMixersChanged < Event
    json_name "SourceAudioMixersChanged"
    # @!attribute [r] source_name
    # @return [String] <tt>sourceName</tt> field
    def source_name; get_field("sourceName", Types::String); end
    # @!attribute [r] mixers
    # @return [Array<Hash>] <tt>mixers</tt> field
    def mixers; get_field("mixers", Types::Array[Types::Object[{:id=>{:type=>Types::Integer, :json_name=>"id"}, :enabled=>{:type=>Types::Boolean, :json_name=>"enabled"}}]]); end
    # @!attribute [r] hex_mixers_value
    # @return [String] <tt>hexMixersValue</tt> field
    def hex_mixers_value; get_field("hexMixersValue", Types::String); end
  end
  class SourceRenamed < Event
    json_name "SourceRenamed"
    # @!attribute [r] previous_name
    # @return [String] <tt>previousName</tt> field
    def previous_name; get_field("previousName", Types::String); end
    # @!attribute [r] new_name
    # @return [String] <tt>newName</tt> field
    def new_name; get_field("newName", Types::String); end
    # @!attribute [r] source_type
    # @return [String] <tt>sourceType</tt> field
    def source_type; get_field("sourceType", Types::String); end
  end
  class SourceFilterAdded < Event
    json_name "SourceFilterAdded"
    # @!attribute [r] source_name
    # @return [String] <tt>sourceName</tt> field
    def source_name; get_field("sourceName", Types::String); end
    # @!attribute [r] filter_name
    # @return [String] <tt>filterName</tt> field
    def filter_name; get_field("filterName", Types::String); end
    # @!attribute [r] filter_type
    # @return [String] <tt>filterType</tt> field
    def filter_type; get_field("filterType", Types::String); end
    # @!attribute [r] filter_settings
    # @return [Hash] <tt>filterSettings</tt> field
    def filter_settings; get_field("filterSettings", Types::Object); end
  end
  class SourceFilterRemoved < Event
    json_name "SourceFilterRemoved"
    # @!attribute [r] source_name
    # @return [String] <tt>sourceName</tt> field
    def source_name; get_field("sourceName", Types::String); end
    # @!attribute [r] filter_name
    # @return [String] <tt>filterName</tt> field
    def filter_name; get_field("filterName", Types::String); end
    # @!attribute [r] filter_type
    # @return [String] <tt>filterType</tt> field
    def filter_type; get_field("filterType", Types::String); end
  end
  class SourceFilterVisibilityChanged < Event
    json_name "SourceFilterVisibilityChanged"
    # @!attribute [r] source_name
    # @return [String] <tt>sourceName</tt> field
    def source_name; get_field("sourceName", Types::String); end
    # @!attribute [r] filter_name
    # @return [String] <tt>filterName</tt> field
    def filter_name; get_field("filterName", Types::String); end
    # @!attribute [r] filter_enabled
    # @return [Boolean] <tt>filterEnabled</tt> field
    def filter_enabled; get_field("filterEnabled", Types::Boolean); end
  end
  class SourceFiltersReordered < Event
    json_name "SourceFiltersReordered"
    # @!attribute [r] source_name
    # @return [String] <tt>sourceName</tt> field
    def source_name; get_field("sourceName", Types::String); end
    # @!attribute [r] filters
    # @return [Array<Hash>] <tt>filters</tt> field
    def filters; get_field("filters", Types::Array[Types::Object[{:name=>{:type=>Types::String, :json_name=>"name"}, :type=>{:type=>Types::String, :json_name=>"type"}, :enabled=>{:type=>Types::Boolean, :json_name=>"enabled"}}]]); end
  end
  class MediaPlaying < Event
    json_name "MediaPlaying"
    # @!attribute [r] source_name
    # @return [String] <tt>sourceName</tt> field
    def source_name; get_field("sourceName", Types::String); end
    # @!attribute [r] source_kind
    # @return [String] <tt>sourceKind</tt> field
    def source_kind; get_field("sourceKind", Types::String); end
  end
  class MediaPaused < Event
    json_name "MediaPaused"
    # @!attribute [r] source_name
    # @return [String] <tt>sourceName</tt> field
    def source_name; get_field("sourceName", Types::String); end
    # @!attribute [r] source_kind
    # @return [String] <tt>sourceKind</tt> field
    def source_kind; get_field("sourceKind", Types::String); end
  end
  class MediaRestarted < Event
    json_name "MediaRestarted"
    # @!attribute [r] source_name
    # @return [String] <tt>sourceName</tt> field
    def source_name; get_field("sourceName", Types::String); end
    # @!attribute [r] source_kind
    # @return [String] <tt>sourceKind</tt> field
    def source_kind; get_field("sourceKind", Types::String); end
  end
  class MediaStopped < Event
    json_name "MediaStopped"
    # @!attribute [r] source_name
    # @return [String] <tt>sourceName</tt> field
    def source_name; get_field("sourceName", Types::String); end
    # @!attribute [r] source_kind
    # @return [String] <tt>sourceKind</tt> field
    def source_kind; get_field("sourceKind", Types::String); end
  end
  class MediaNext < Event
    json_name "MediaNext"
    # @!attribute [r] source_name
    # @return [String] <tt>sourceName</tt> field
    def source_name; get_field("sourceName", Types::String); end
    # @!attribute [r] source_kind
    # @return [String] <tt>sourceKind</tt> field
    def source_kind; get_field("sourceKind", Types::String); end
  end
  class MediaPrevious < Event
    json_name "MediaPrevious"
    # @!attribute [r] source_name
    # @return [String] <tt>sourceName</tt> field
    def source_name; get_field("sourceName", Types::String); end
    # @!attribute [r] source_kind
    # @return [String] <tt>sourceKind</tt> field
    def source_kind; get_field("sourceKind", Types::String); end
  end
  class MediaStarted < Event
    json_name "MediaStarted"
    # @!attribute [r] source_name
    # @return [String] <tt>sourceName</tt> field
    def source_name; get_field("sourceName", Types::String); end
    # @!attribute [r] source_kind
    # @return [String] <tt>sourceKind</tt> field
    def source_kind; get_field("sourceKind", Types::String); end
  end
  class MediaEnded < Event
    json_name "MediaEnded"
    # @!attribute [r] source_name
    # @return [String] <tt>sourceName</tt> field
    def source_name; get_field("sourceName", Types::String); end
    # @!attribute [r] source_kind
    # @return [String] <tt>sourceKind</tt> field
    def source_kind; get_field("sourceKind", Types::String); end
  end
  class SourceOrderChanged < Event
    json_name "SourceOrderChanged"
    # @!attribute [r] scene_name
    # @return [String] <tt>scene-name</tt> field
    def scene_name; get_field("scene-name", Types::String); end
    # @!attribute [r] scene_items
    # @return [Array<Hash>] <tt>scene-items</tt> field
    def scene_items; get_field("scene-items", Types::Array[Types::Object[{:source_name=>{:type=>Types::String, :json_name=>"source-name"}, :item_id=>{:type=>Types::Integer, :json_name=>"item-id"}}]]); end
  end
  class SceneItemAdded < Event
    json_name "SceneItemAdded"
    # @!attribute [r] scene_name
    # @return [String] <tt>scene-name</tt> field
    def scene_name; get_field("scene-name", Types::String); end
    # @!attribute [r] item_name
    # @return [String] <tt>item-name</tt> field
    def item_name; get_field("item-name", Types::String); end
    # @!attribute [r] item_id
    # @return [Integer] <tt>item-id</tt> field
    def item_id; get_field("item-id", Types::Integer); end
  end
  class SceneItemRemoved < Event
    json_name "SceneItemRemoved"
    # @!attribute [r] scene_name
    # @return [String] <tt>scene-name</tt> field
    def scene_name; get_field("scene-name", Types::String); end
    # @!attribute [r] item_name
    # @return [String] <tt>item-name</tt> field
    def item_name; get_field("item-name", Types::String); end
    # @!attribute [r] item_id
    # @return [Integer] <tt>item-id</tt> field
    def item_id; get_field("item-id", Types::Integer); end
  end
  class SceneItemVisibilityChanged < Event
    json_name "SceneItemVisibilityChanged"
    # @!attribute [r] scene_name
    # @return [String] <tt>scene-name</tt> field
    def scene_name; get_field("scene-name", Types::String); end
    # @!attribute [r] item_name
    # @return [String] <tt>item-name</tt> field
    def item_name; get_field("item-name", Types::String); end
    # @!attribute [r] item_id
    # @return [Integer] <tt>item-id</tt> field
    def item_id; get_field("item-id", Types::Integer); end
    # @!attribute [r] item_visible
    # @return [Boolean] <tt>item-visible</tt> field
    def item_visible; get_field("item-visible", Types::Boolean); end
  end
  class SceneItemLockChanged < Event
    json_name "SceneItemLockChanged"
    # @!attribute [r] scene_name
    # @return [String] <tt>scene-name</tt> field
    def scene_name; get_field("scene-name", Types::String); end
    # @!attribute [r] item_name
    # @return [String] <tt>item-name</tt> field
    def item_name; get_field("item-name", Types::String); end
    # @!attribute [r] item_id
    # @return [Integer] <tt>item-id</tt> field
    def item_id; get_field("item-id", Types::Integer); end
    # @!attribute [r] item_locked
    # @return [Boolean] <tt>item-locked</tt> field
    def item_locked; get_field("item-locked", Types::Boolean); end
  end
  class SceneItemTransformChanged < Event
    json_name "SceneItemTransformChanged"
    # @!attribute [r] scene_name
    # @return [String] <tt>scene-name</tt> field
    def scene_name; get_field("scene-name", Types::String); end
    # @!attribute [r] item_name
    # @return [String] <tt>item-name</tt> field
    def item_name; get_field("item-name", Types::String); end
    # @!attribute [r] item_id
    # @return [Integer] <tt>item-id</tt> field
    def item_id; get_field("item-id", Types::Integer); end
    # @!attribute [r] transform
    # @return [SceneItemTransform] <tt>transform</tt> field
    def transform; get_field("transform", Types::SceneItemTransform); end
  end
  class SceneItemSelected < Event
    json_name "SceneItemSelected"
    # @!attribute [r] scene_name
    # @return [String] <tt>scene-name</tt> field
    def scene_name; get_field("scene-name", Types::String); end
    # @!attribute [r] item_name
    # @return [String] <tt>item-name</tt> field
    def item_name; get_field("item-name", Types::String); end
    # @!attribute [r] item_id
    # @return [Integer] <tt>item-id</tt> field
    def item_id; get_field("item-id", Types::Integer); end
  end
  class SceneItemDeselected < Event
    json_name "SceneItemDeselected"
    # @!attribute [r] scene_name
    # @return [String] <tt>scene-name</tt> field
    def scene_name; get_field("scene-name", Types::String); end
    # @!attribute [r] item_name
    # @return [String] <tt>item-name</tt> field
    def item_name; get_field("item-name", Types::String); end
    # @!attribute [r] item_id
    # @return [Integer] <tt>item-id</tt> field
    def item_id; get_field("item-id", Types::Integer); end
  end
  class PreviewSceneChanged < Event
    json_name "PreviewSceneChanged"
    # @!attribute [r] scene_name
    # @return [String] <tt>scene-name</tt> field
    def scene_name; get_field("scene-name", Types::String); end
    # @!attribute [r] sources
    # @return [Array<SceneItem>] <tt>sources</tt> field
    def sources; get_field("sources", Types::Array[Types::SceneItem]); end
  end
  class StudioModeSwitched < Event
    json_name "StudioModeSwitched"
    # @!attribute [r] new_state
    # @return [Boolean] <tt>new-state</tt> field
    def new_state; get_field("new-state", Types::Boolean); end
  end
end  # module Events
module Event::Mixin
  # Adds an event handler for <tt>SwitchScenes</tt> event.
  # @yieldparam event [Events::SwitchScenes] the event object
  # @return [void]
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#switchscenes
  def on_switch_scenes(&listener)
    on("SwitchScenes", &listener)
  end
  # Adds an event handler for <tt>ScenesChanged</tt> event.
  # @yieldparam event [Events::ScenesChanged] the event object
  # @return [void]
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#sceneschanged
  def on_scenes_changed(&listener)
    on("ScenesChanged", &listener)
  end
  # Adds an event handler for <tt>SceneCollectionChanged</tt> event.
  # @yieldparam event [Events::SceneCollectionChanged] the event object
  # @return [void]
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#scenecollectionchanged
  def on_scene_collection_changed(&listener)
    on("SceneCollectionChanged", &listener)
  end
  # Adds an event handler for <tt>SceneCollectionListChanged</tt> event.
  # @yieldparam event [Events::SceneCollectionListChanged] the event object
  # @return [void]
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#scenecollectionlistchanged
  def on_scene_collection_list_changed(&listener)
    on("SceneCollectionListChanged", &listener)
  end
  # Adds an event handler for <tt>SwitchTransition</tt> event.
  # @yieldparam event [Events::SwitchTransition] the event object
  # @return [void]
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#switchtransition
  def on_switch_transition(&listener)
    on("SwitchTransition", &listener)
  end
  # Adds an event handler for <tt>TransitionListChanged</tt> event.
  # @yieldparam event [Events::TransitionListChanged] the event object
  # @return [void]
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#transitionlistchanged
  def on_transition_list_changed(&listener)
    on("TransitionListChanged", &listener)
  end
  # Adds an event handler for <tt>TransitionDurationChanged</tt> event.
  # @yieldparam event [Events::TransitionDurationChanged] the event object
  # @return [void]
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#transitiondurationchanged
  def on_transition_duration_changed(&listener)
    on("TransitionDurationChanged", &listener)
  end
  # Adds an event handler for <tt>TransitionBegin</tt> event.
  # @yieldparam event [Events::TransitionBegin] the event object
  # @return [void]
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#transitionbegin
  def on_transition_begin(&listener)
    on("TransitionBegin", &listener)
  end
  # Adds an event handler for <tt>TransitionEnd</tt> event.
  # @yieldparam event [Events::TransitionEnd] the event object
  # @return [void]
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#transitionend
  def on_transition_end(&listener)
    on("TransitionEnd", &listener)
  end
  # Adds an event handler for <tt>TransitionVideoEnd</tt> event.
  # @yieldparam event [Events::TransitionVideoEnd] the event object
  # @return [void]
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#transitionvideoend
  def on_transition_video_end(&listener)
    on("TransitionVideoEnd", &listener)
  end
  # Adds an event handler for <tt>ProfileChanged</tt> event.
  # @yieldparam event [Events::ProfileChanged] the event object
  # @return [void]
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#profilechanged
  def on_profile_changed(&listener)
    on("ProfileChanged", &listener)
  end
  # Adds an event handler for <tt>ProfileListChanged</tt> event.
  # @yieldparam event [Events::ProfileListChanged] the event object
  # @return [void]
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#profilelistchanged
  def on_profile_list_changed(&listener)
    on("ProfileListChanged", &listener)
  end
  # Adds an event handler for <tt>StreamStarting</tt> event.
  # @yieldparam event [Events::StreamStarting] the event object
  # @return [void]
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#streamstarting
  def on_stream_starting(&listener)
    on("StreamStarting", &listener)
  end
  # Adds an event handler for <tt>StreamStarted</tt> event.
  # @yieldparam event [Events::StreamStarted] the event object
  # @return [void]
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#streamstarted
  def on_stream_started(&listener)
    on("StreamStarted", &listener)
  end
  # Adds an event handler for <tt>StreamStopping</tt> event.
  # @yieldparam event [Events::StreamStopping] the event object
  # @return [void]
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#streamstopping
  def on_stream_stopping(&listener)
    on("StreamStopping", &listener)
  end
  # Adds an event handler for <tt>StreamStopped</tt> event.
  # @yieldparam event [Events::StreamStopped] the event object
  # @return [void]
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#streamstopped
  def on_stream_stopped(&listener)
    on("StreamStopped", &listener)
  end
  # Adds an event handler for <tt>StreamStatus</tt> event.
  # @yieldparam event [Events::StreamStatus] the event object
  # @return [void]
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#streamstatus
  def on_stream_status(&listener)
    on("StreamStatus", &listener)
  end
  # Adds an event handler for <tt>RecordingStarting</tt> event.
  # @yieldparam event [Events::RecordingStarting] the event object
  # @return [void]
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#recordingstarting
  def on_recording_starting(&listener)
    on("RecordingStarting", &listener)
  end
  # Adds an event handler for <tt>RecordingStarted</tt> event.
  # @yieldparam event [Events::RecordingStarted] the event object
  # @return [void]
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#recordingstarted
  def on_recording_started(&listener)
    on("RecordingStarted", &listener)
  end
  # Adds an event handler for <tt>RecordingStopping</tt> event.
  # @yieldparam event [Events::RecordingStopping] the event object
  # @return [void]
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#recordingstopping
  def on_recording_stopping(&listener)
    on("RecordingStopping", &listener)
  end
  # Adds an event handler for <tt>RecordingStopped</tt> event.
  # @yieldparam event [Events::RecordingStopped] the event object
  # @return [void]
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#recordingstopped
  def on_recording_stopped(&listener)
    on("RecordingStopped", &listener)
  end
  # Adds an event handler for <tt>RecordingPaused</tt> event.
  # @yieldparam event [Events::RecordingPaused] the event object
  # @return [void]
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#recordingpaused
  def on_recording_paused(&listener)
    on("RecordingPaused", &listener)
  end
  # Adds an event handler for <tt>RecordingResumed</tt> event.
  # @yieldparam event [Events::RecordingResumed] the event object
  # @return [void]
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#recordingresumed
  def on_recording_resumed(&listener)
    on("RecordingResumed", &listener)
  end
  # Adds an event handler for <tt>VirtualCamStarted</tt> event.
  # @yieldparam event [Events::VirtualCamStarted] the event object
  # @return [void]
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#virtualcamstarted
  def on_virtual_cam_started(&listener)
    on("VirtualCamStarted", &listener)
  end
  # Adds an event handler for <tt>VirtualCamStopped</tt> event.
  # @yieldparam event [Events::VirtualCamStopped] the event object
  # @return [void]
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#virtualcamstopped
  def on_virtual_cam_stopped(&listener)
    on("VirtualCamStopped", &listener)
  end
  # Adds an event handler for <tt>ReplayStarting</tt> event.
  # @yieldparam event [Events::ReplayStarting] the event object
  # @return [void]
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#replaystarting
  def on_replay_starting(&listener)
    on("ReplayStarting", &listener)
  end
  # Adds an event handler for <tt>ReplayStarted</tt> event.
  # @yieldparam event [Events::ReplayStarted] the event object
  # @return [void]
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#replaystarted
  def on_replay_started(&listener)
    on("ReplayStarted", &listener)
  end
  # Adds an event handler for <tt>ReplayStopping</tt> event.
  # @yieldparam event [Events::ReplayStopping] the event object
  # @return [void]
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#replaystopping
  def on_replay_stopping(&listener)
    on("ReplayStopping", &listener)
  end
  # Adds an event handler for <tt>ReplayStopped</tt> event.
  # @yieldparam event [Events::ReplayStopped] the event object
  # @return [void]
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#replaystopped
  def on_replay_stopped(&listener)
    on("ReplayStopped", &listener)
  end
  # Adds an event handler for <tt>Exiting</tt> event.
  # @yieldparam event [Events::Exiting] the event object
  # @return [void]
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#exiting
  def on_exiting(&listener)
    on("Exiting", &listener)
  end
  # Adds an event handler for <tt>Heartbeat</tt> event.
  # @yieldparam event [Events::Heartbeat] the event object
  # @return [void]
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#heartbeat
  def on_heartbeat(&listener)
    on("Heartbeat", &listener)
  end
  # Adds an event handler for <tt>BroadcastCustomMessage</tt> event.
  # @yieldparam event [Events::BroadcastCustomMessage] the event object
  # @return [void]
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#broadcastcustommessage
  def on_broadcast_custom_message(&listener)
    on("BroadcastCustomMessage", &listener)
  end
  # Adds an event handler for <tt>SourceCreated</tt> event.
  # @yieldparam event [Events::SourceCreated] the event object
  # @return [void]
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#sourcecreated
  def on_source_created(&listener)
    on("SourceCreated", &listener)
  end
  # Adds an event handler for <tt>SourceDestroyed</tt> event.
  # @yieldparam event [Events::SourceDestroyed] the event object
  # @return [void]
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#sourcedestroyed
  def on_source_destroyed(&listener)
    on("SourceDestroyed", &listener)
  end
  # Adds an event handler for <tt>SourceVolumeChanged</tt> event.
  # @yieldparam event [Events::SourceVolumeChanged] the event object
  # @return [void]
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#sourcevolumechanged
  def on_source_volume_changed(&listener)
    on("SourceVolumeChanged", &listener)
  end
  # Adds an event handler for <tt>SourceMuteStateChanged</tt> event.
  # @yieldparam event [Events::SourceMuteStateChanged] the event object
  # @return [void]
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#sourcemutestatechanged
  def on_source_mute_state_changed(&listener)
    on("SourceMuteStateChanged", &listener)
  end
  # Adds an event handler for <tt>SourceAudioDeactivated</tt> event.
  # @yieldparam event [Events::SourceAudioDeactivated] the event object
  # @return [void]
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#sourceaudiodeactivated
  def on_source_audio_deactivated(&listener)
    on("SourceAudioDeactivated", &listener)
  end
  # Adds an event handler for <tt>SourceAudioActivated</tt> event.
  # @yieldparam event [Events::SourceAudioActivated] the event object
  # @return [void]
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#sourceaudioactivated
  def on_source_audio_activated(&listener)
    on("SourceAudioActivated", &listener)
  end
  # Adds an event handler for <tt>SourceAudioSyncOffsetChanged</tt> event.
  # @yieldparam event [Events::SourceAudioSyncOffsetChanged] the event object
  # @return [void]
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#sourceaudiosyncoffsetchanged
  def on_source_audio_sync_offset_changed(&listener)
    on("SourceAudioSyncOffsetChanged", &listener)
  end
  # Adds an event handler for <tt>SourceAudioMixersChanged</tt> event.
  # @yieldparam event [Events::SourceAudioMixersChanged] the event object
  # @return [void]
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#sourceaudiomixerschanged
  def on_source_audio_mixers_changed(&listener)
    on("SourceAudioMixersChanged", &listener)
  end
  # Adds an event handler for <tt>SourceRenamed</tt> event.
  # @yieldparam event [Events::SourceRenamed] the event object
  # @return [void]
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#sourcerenamed
  def on_source_renamed(&listener)
    on("SourceRenamed", &listener)
  end
  # Adds an event handler for <tt>SourceFilterAdded</tt> event.
  # @yieldparam event [Events::SourceFilterAdded] the event object
  # @return [void]
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#sourcefilteradded
  def on_source_filter_added(&listener)
    on("SourceFilterAdded", &listener)
  end
  # Adds an event handler for <tt>SourceFilterRemoved</tt> event.
  # @yieldparam event [Events::SourceFilterRemoved] the event object
  # @return [void]
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#sourcefilterremoved
  def on_source_filter_removed(&listener)
    on("SourceFilterRemoved", &listener)
  end
  # Adds an event handler for <tt>SourceFilterVisibilityChanged</tt> event.
  # @yieldparam event [Events::SourceFilterVisibilityChanged] the event object
  # @return [void]
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#sourcefiltervisibilitychanged
  def on_source_filter_visibility_changed(&listener)
    on("SourceFilterVisibilityChanged", &listener)
  end
  # Adds an event handler for <tt>SourceFiltersReordered</tt> event.
  # @yieldparam event [Events::SourceFiltersReordered] the event object
  # @return [void]
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#sourcefiltersreordered
  def on_source_filters_reordered(&listener)
    on("SourceFiltersReordered", &listener)
  end
  # Adds an event handler for <tt>MediaPlaying</tt> event.
  # @yieldparam event [Events::MediaPlaying] the event object
  # @return [void]
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#mediaplaying
  def on_media_playing(&listener)
    on("MediaPlaying", &listener)
  end
  # Adds an event handler for <tt>MediaPaused</tt> event.
  # @yieldparam event [Events::MediaPaused] the event object
  # @return [void]
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#mediapaused
  def on_media_paused(&listener)
    on("MediaPaused", &listener)
  end
  # Adds an event handler for <tt>MediaRestarted</tt> event.
  # @yieldparam event [Events::MediaRestarted] the event object
  # @return [void]
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#mediarestarted
  def on_media_restarted(&listener)
    on("MediaRestarted", &listener)
  end
  # Adds an event handler for <tt>MediaStopped</tt> event.
  # @yieldparam event [Events::MediaStopped] the event object
  # @return [void]
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#mediastopped
  def on_media_stopped(&listener)
    on("MediaStopped", &listener)
  end
  # Adds an event handler for <tt>MediaNext</tt> event.
  # @yieldparam event [Events::MediaNext] the event object
  # @return [void]
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#medianext
  def on_media_next(&listener)
    on("MediaNext", &listener)
  end
  # Adds an event handler for <tt>MediaPrevious</tt> event.
  # @yieldparam event [Events::MediaPrevious] the event object
  # @return [void]
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#mediaprevious
  def on_media_previous(&listener)
    on("MediaPrevious", &listener)
  end
  # Adds an event handler for <tt>MediaStarted</tt> event.
  # @yieldparam event [Events::MediaStarted] the event object
  # @return [void]
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#mediastarted
  def on_media_started(&listener)
    on("MediaStarted", &listener)
  end
  # Adds an event handler for <tt>MediaEnded</tt> event.
  # @yieldparam event [Events::MediaEnded] the event object
  # @return [void]
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#mediaended
  def on_media_ended(&listener)
    on("MediaEnded", &listener)
  end
  # Adds an event handler for <tt>SourceOrderChanged</tt> event.
  # @yieldparam event [Events::SourceOrderChanged] the event object
  # @return [void]
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#sourceorderchanged
  def on_source_order_changed(&listener)
    on("SourceOrderChanged", &listener)
  end
  # Adds an event handler for <tt>SceneItemAdded</tt> event.
  # @yieldparam event [Events::SceneItemAdded] the event object
  # @return [void]
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#sceneitemadded
  def on_scene_item_added(&listener)
    on("SceneItemAdded", &listener)
  end
  # Adds an event handler for <tt>SceneItemRemoved</tt> event.
  # @yieldparam event [Events::SceneItemRemoved] the event object
  # @return [void]
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#sceneitemremoved
  def on_scene_item_removed(&listener)
    on("SceneItemRemoved", &listener)
  end
  # Adds an event handler for <tt>SceneItemVisibilityChanged</tt> event.
  # @yieldparam event [Events::SceneItemVisibilityChanged] the event object
  # @return [void]
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#sceneitemvisibilitychanged
  def on_scene_item_visibility_changed(&listener)
    on("SceneItemVisibilityChanged", &listener)
  end
  # Adds an event handler for <tt>SceneItemLockChanged</tt> event.
  # @yieldparam event [Events::SceneItemLockChanged] the event object
  # @return [void]
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#sceneitemlockchanged
  def on_scene_item_lock_changed(&listener)
    on("SceneItemLockChanged", &listener)
  end
  # Adds an event handler for <tt>SceneItemTransformChanged</tt> event.
  # @yieldparam event [Events::SceneItemTransformChanged] the event object
  # @return [void]
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#sceneitemtransformchanged
  def on_scene_item_transform_changed(&listener)
    on("SceneItemTransformChanged", &listener)
  end
  # Adds an event handler for <tt>SceneItemSelected</tt> event.
  # @yieldparam event [Events::SceneItemSelected] the event object
  # @return [void]
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#sceneitemselected
  def on_scene_item_selected(&listener)
    on("SceneItemSelected", &listener)
  end
  # Adds an event handler for <tt>SceneItemDeselected</tt> event.
  # @yieldparam event [Events::SceneItemDeselected] the event object
  # @return [void]
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#sceneitemdeselected
  def on_scene_item_deselected(&listener)
    on("SceneItemDeselected", &listener)
  end
  # Adds an event handler for <tt>PreviewSceneChanged</tt> event.
  # @yieldparam event [Events::PreviewSceneChanged] the event object
  # @return [void]
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#previewscenechanged
  def on_preview_scene_changed(&listener)
    on("PreviewSceneChanged", &listener)
  end
  # Adds an event handler for <tt>StudioModeSwitched</tt> event.
  # @yieldparam event [Events::StudioModeSwitched] the event object
  # @return [void]
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#studiomodeswitched
  def on_studio_mode_switched(&listener)
    on("StudioModeSwitched", &listener)
  end
end  # module Event::Mixin
module Requests
  # @see Request::Mixin#get_version
  # @see Responses::GetVersion
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getversion
  class GetVersion < Request
    json_name "GetVersion"
    params(
    )
  end
  # @see Request::Mixin#get_auth_required
  # @see Responses::GetAuthRequired
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getauthrequired
  class GetAuthRequired < Request
    json_name "GetAuthRequired"
    params(
    )
  end
  # @see Request::Mixin#authenticate
  # @see Responses::Authenticate
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#authenticate
  class Authenticate < Request
    json_name "Authenticate"
    params(
      "auth": {json_name: "auth", type: Types::String},
    )
  end
  # @see Request::Mixin#set_heartbeat
  # @see Responses::SetHeartbeat
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setheartbeat
  class SetHeartbeat < Request
    json_name "SetHeartbeat"
    params(
      "enable": {json_name: "enable", type: Types::Boolean},
    )
  end
  # @see Request::Mixin#set_filename_formatting
  # @see Responses::SetFilenameFormatting
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setfilenameformatting
  class SetFilenameFormatting < Request
    json_name "SetFilenameFormatting"
    params(
      "filename_formatting": {json_name: "filename-formatting", type: Types::String},
    )
  end
  # @see Request::Mixin#get_filename_formatting
  # @see Responses::GetFilenameFormatting
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getfilenameformatting
  class GetFilenameFormatting < Request
    json_name "GetFilenameFormatting"
    params(
    )
  end
  # @see Request::Mixin#get_stats
  # @see Responses::GetStats
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getstats
  class GetStats < Request
    json_name "GetStats"
    params(
    )
  end
  # @see Request::Mixin#broadcast_custom_message
  # @see Responses::BroadcastCustomMessage
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#broadcastcustommessage
  class BroadcastCustomMessage < Request
    json_name "BroadcastCustomMessage"
    params(
      "realm": {json_name: "realm", type: Types::String},
      "data": {json_name: "data", type: Types::Object},
    )
  end
  # @see Request::Mixin#get_video_info
  # @see Responses::GetVideoInfo
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getvideoinfo
  class GetVideoInfo < Request
    json_name "GetVideoInfo"
    params(
    )
  end
  # @see Request::Mixin#open_projector
  # @see Responses::OpenProjector
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#openprojector
  class OpenProjector < Request
    json_name "OpenProjector"
    params(
      "type": {json_name: "type", type: Types::Optional[Types::String]},
      "monitor": {json_name: "monitor", type: Types::Optional[Types::Integer]},
      "geometry": {json_name: "geometry", type: Types::Optional[Types::String]},
      "name": {json_name: "name", type: Types::Optional[Types::String]},
    )
  end
  # @see Request::Mixin#trigger_hotkey_by_name
  # @see Responses::TriggerHotkeyByName
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#triggerhotkeybyname
  class TriggerHotkeyByName < Request
    json_name "TriggerHotkeyByName"
    params(
      "hotkey_name": {json_name: "hotkeyName", type: Types::String},
    )
  end
  # @see Request::Mixin#trigger_hotkey_by_sequence
  # @see Responses::TriggerHotkeyBySequence
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#triggerhotkeybysequence
  class TriggerHotkeyBySequence < Request
    json_name "TriggerHotkeyBySequence"
    params(
      "key_id": {json_name: "keyId", type: Types::String},
      "key_modifiers": {json_name: "keyModifiers", type: Types::Optional[Types::Object[{:shift=>{:type=>Types::Boolean, :json_name=>"shift"}, :alt=>{:type=>Types::Boolean, :json_name=>"alt"}, :control=>{:type=>Types::Boolean, :json_name=>"control"}, :command=>{:type=>Types::Boolean, :json_name=>"command"}}]]},
    )
  end
  # @see Request::Mixin#execute_batch
  # @see Responses::ExecuteBatch
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#executebatch
  class ExecuteBatch < Request
    json_name "ExecuteBatch"
    params(
      "requests": {json_name: "requests", type: Types::Array[Types::Object[{:request_type=>{:type=>Types::String, :json_name=>"request-type"}, :message_id=>{:type=>Types::Optional[Types::String], :json_name=>"message-id"}}]]},
      "abort_on_fail": {json_name: "abortOnFail", type: Types::Optional[Types::Boolean]},
    )
  end
  # @see Request::Mixin#sleep
  # @see Responses::Sleep
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#sleep
  class Sleep < Request
    json_name "Sleep"
    params(
      "sleep_millis": {json_name: "sleepMillis", type: Types::Integer},
    )
  end
  # @see Request::Mixin#play_pause_media
  # @see Responses::PlayPauseMedia
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#playpausemedia
  class PlayPauseMedia < Request
    json_name "PlayPauseMedia"
    params(
      "source_name": {json_name: "sourceName", type: Types::String},
      "play_pause": {json_name: "playPause", type: Types::Boolean},
    )
  end
  # @see Request::Mixin#restart_media
  # @see Responses::RestartMedia
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#restartmedia
  class RestartMedia < Request
    json_name "RestartMedia"
    params(
      "source_name": {json_name: "sourceName", type: Types::String},
    )
  end
  # @see Request::Mixin#stop_media
  # @see Responses::StopMedia
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#stopmedia
  class StopMedia < Request
    json_name "StopMedia"
    params(
      "source_name": {json_name: "sourceName", type: Types::String},
    )
  end
  # @see Request::Mixin#next_media
  # @see Responses::NextMedia
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#nextmedia
  class NextMedia < Request
    json_name "NextMedia"
    params(
      "source_name": {json_name: "sourceName", type: Types::String},
    )
  end
  # @see Request::Mixin#previous_media
  # @see Responses::PreviousMedia
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#previousmedia
  class PreviousMedia < Request
    json_name "PreviousMedia"
    params(
      "source_name": {json_name: "sourceName", type: Types::String},
    )
  end
  # @see Request::Mixin#get_media_duration
  # @see Responses::GetMediaDuration
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getmediaduration
  class GetMediaDuration < Request
    json_name "GetMediaDuration"
    params(
      "source_name": {json_name: "sourceName", type: Types::String},
    )
  end
  # @see Request::Mixin#get_media_time
  # @see Responses::GetMediaTime
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getmediatime
  class GetMediaTime < Request
    json_name "GetMediaTime"
    params(
      "source_name": {json_name: "sourceName", type: Types::String},
    )
  end
  # @see Request::Mixin#set_media_time
  # @see Responses::SetMediaTime
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setmediatime
  class SetMediaTime < Request
    json_name "SetMediaTime"
    params(
      "source_name": {json_name: "sourceName", type: Types::String},
      "timestamp": {json_name: "timestamp", type: Types::Integer},
    )
  end
  # @see Request::Mixin#scrub_media
  # @see Responses::ScrubMedia
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#scrubmedia
  class ScrubMedia < Request
    json_name "ScrubMedia"
    params(
      "source_name": {json_name: "sourceName", type: Types::String},
      "time_offset": {json_name: "timeOffset", type: Types::Integer},
    )
  end
  # @see Request::Mixin#get_media_state
  # @see Responses::GetMediaState
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getmediastate
  class GetMediaState < Request
    json_name "GetMediaState"
    params(
      "source_name": {json_name: "sourceName", type: Types::String},
    )
  end
  # @see Request::Mixin#get_media_sources_list
  # @see Responses::GetMediaSourcesList
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getmediasourceslist
  class GetMediaSourcesList < Request
    json_name "GetMediaSourcesList"
    params(
    )
  end
  # @see Request::Mixin#create_source
  # @see Responses::CreateSource
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#createsource
  class CreateSource < Request
    json_name "CreateSource"
    params(
      "source_name": {json_name: "sourceName", type: Types::String},
      "source_kind": {json_name: "sourceKind", type: Types::String},
      "scene_name": {json_name: "sceneName", type: Types::String},
      "source_settings": {json_name: "sourceSettings", type: Types::Optional[Types::Object]},
      "set_visible": {json_name: "setVisible", type: Types::Optional[Types::Boolean]},
    )
  end
  # @see Request::Mixin#get_sources_list
  # @see Responses::GetSourcesList
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getsourceslist
  class GetSourcesList < Request
    json_name "GetSourcesList"
    params(
    )
  end
  # @see Request::Mixin#get_source_types_list
  # @see Responses::GetSourceTypesList
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getsourcetypeslist
  class GetSourceTypesList < Request
    json_name "GetSourceTypesList"
    params(
    )
  end
  # @see Request::Mixin#get_volume
  # @see Responses::GetVolume
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getvolume
  class GetVolume < Request
    json_name "GetVolume"
    params(
      "source": {json_name: "source", type: Types::String},
      "use_decibel": {json_name: "useDecibel", type: Types::Optional[Types::Boolean]},
    )
  end
  # @see Request::Mixin#set_volume
  # @see Responses::SetVolume
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setvolume
  class SetVolume < Request
    json_name "SetVolume"
    params(
      "source": {json_name: "source", type: Types::String},
      "volume": {json_name: "volume", type: Types::Float},
      "use_decibel": {json_name: "useDecibel", type: Types::Optional[Types::Boolean]},
    )
  end
  # @see Request::Mixin#set_tracks
  # @see Responses::SetTracks
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#settracks
  class SetTracks < Request
    json_name "SetTracks"
    params(
      "source_name": {json_name: "sourceName", type: Types::String},
      "track": {json_name: "track", type: Types::Integer},
      "active": {json_name: "active", type: Types::Boolean},
    )
  end
  # @see Request::Mixin#get_tracks
  # @see Responses::GetTracks
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#gettracks
  class GetTracks < Request
    json_name "GetTracks"
    params(
      "source_name": {json_name: "sourceName", type: Types::String},
    )
  end
  # @see Request::Mixin#get_mute
  # @see Responses::GetMute
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getmute
  class GetMute < Request
    json_name "GetMute"
    params(
      "source": {json_name: "source", type: Types::String},
    )
  end
  # @see Request::Mixin#set_mute
  # @see Responses::SetMute
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setmute
  class SetMute < Request
    json_name "SetMute"
    params(
      "source": {json_name: "source", type: Types::String},
      "mute": {json_name: "mute", type: Types::Boolean},
    )
  end
  # @see Request::Mixin#toggle_mute
  # @see Responses::ToggleMute
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#togglemute
  class ToggleMute < Request
    json_name "ToggleMute"
    params(
      "source": {json_name: "source", type: Types::String},
    )
  end
  # @see Request::Mixin#get_source_active
  # @see Responses::GetSourceActive
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getsourceactive
  class GetSourceActive < Request
    json_name "GetSourceActive"
    params(
      "source_name": {json_name: "sourceName", type: Types::String},
    )
  end
  # @see Request::Mixin#get_audio_active
  # @see Responses::GetAudioActive
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getaudioactive
  class GetAudioActive < Request
    json_name "GetAudioActive"
    params(
      "source_name": {json_name: "sourceName", type: Types::String},
    )
  end
  # @see Request::Mixin#set_source_name
  # @see Responses::SetSourceName
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setsourcename
  class SetSourceName < Request
    json_name "SetSourceName"
    params(
      "source_name": {json_name: "sourceName", type: Types::String},
      "new_name": {json_name: "newName", type: Types::String},
    )
  end
  # @see Request::Mixin#set_sync_offset
  # @see Responses::SetSyncOffset
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setsyncoffset
  class SetSyncOffset < Request
    json_name "SetSyncOffset"
    params(
      "source": {json_name: "source", type: Types::String},
      "offset": {json_name: "offset", type: Types::Integer},
    )
  end
  # @see Request::Mixin#get_sync_offset
  # @see Responses::GetSyncOffset
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getsyncoffset
  class GetSyncOffset < Request
    json_name "GetSyncOffset"
    params(
      "source": {json_name: "source", type: Types::String},
    )
  end
  # @see Request::Mixin#get_source_settings
  # @see Responses::GetSourceSettings
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getsourcesettings
  class GetSourceSettings < Request
    json_name "GetSourceSettings"
    params(
      "source_name": {json_name: "sourceName", type: Types::String},
      "source_type": {json_name: "sourceType", type: Types::Optional[Types::String]},
    )
  end
  # @see Request::Mixin#set_source_settings
  # @see Responses::SetSourceSettings
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setsourcesettings
  class SetSourceSettings < Request
    json_name "SetSourceSettings"
    params(
      "source_name": {json_name: "sourceName", type: Types::String},
      "source_type": {json_name: "sourceType", type: Types::Optional[Types::String]},
      "source_settings": {json_name: "sourceSettings", type: Types::Object},
    )
  end
  # @see Request::Mixin#get_text_gdi_plus_properties
  # @see Responses::GetTextGDIPlusProperties
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#gettextgdiplusproperties
  class GetTextGDIPlusProperties < Request
    json_name "GetTextGDIPlusProperties"
    params(
      "source": {json_name: "source", type: Types::String},
    )
  end
  # @see Request::Mixin#set_text_gdi_plus_properties
  # @see Responses::SetTextGDIPlusProperties
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#settextgdiplusproperties
  class SetTextGDIPlusProperties < Request
    json_name "SetTextGDIPlusProperties"
    params(
      "source": {json_name: "source", type: Types::String},
      "align": {json_name: "align", type: Types::Optional[Types::String]},
      "bk_color": {json_name: "bk_color", type: Types::Optional[Types::Integer]},
      "bk_opacity": {json_name: "bk_opacity", type: Types::Optional[Types::Integer]},
      "chatlog": {json_name: "chatlog", type: Types::Optional[Types::Boolean]},
      "chatlog_lines": {json_name: "chatlog_lines", type: Types::Optional[Types::Integer]},
      "color": {json_name: "color", type: Types::Optional[Types::Integer]},
      "extents": {json_name: "extents", type: Types::Optional[Types::Boolean]},
      "extents_cx": {json_name: "extents_cx", type: Types::Optional[Types::Integer]},
      "extents_cy": {json_name: "extents_cy", type: Types::Optional[Types::Integer]},
      "file": {json_name: "file", type: Types::Optional[Types::String]},
      "read_from_file": {json_name: "read_from_file", type: Types::Optional[Types::Boolean]},
      "font": {json_name: "font", type: Types::Optional[Types::Object[{:face=>{:type=>Types::Optional[Types::String], :json_name=>"face"}, :flags=>{:type=>Types::Optional[Types::Integer], :json_name=>"flags"}, :size=>{:type=>Types::Optional[Types::Integer], :json_name=>"size"}, :style=>{:type=>Types::Optional[Types::String], :json_name=>"style"}}]]},
      "gradient": {json_name: "gradient", type: Types::Optional[Types::Boolean]},
      "gradient_color": {json_name: "gradient_color", type: Types::Optional[Types::Integer]},
      "gradient_dir": {json_name: "gradient_dir", type: Types::Optional[Types::Float]},
      "gradient_opacity": {json_name: "gradient_opacity", type: Types::Optional[Types::Integer]},
      "outline": {json_name: "outline", type: Types::Optional[Types::Boolean]},
      "outline_color": {json_name: "outline_color", type: Types::Optional[Types::Integer]},
      "outline_size": {json_name: "outline_size", type: Types::Optional[Types::Integer]},
      "outline_opacity": {json_name: "outline_opacity", type: Types::Optional[Types::Integer]},
      "text": {json_name: "text", type: Types::Optional[Types::String]},
      "valign": {json_name: "valign", type: Types::Optional[Types::String]},
      "vertical": {json_name: "vertical", type: Types::Optional[Types::Boolean]},
      "render": {json_name: "render", type: Types::Optional[Types::Boolean]},
    )
  end
  # @see Request::Mixin#get_text_freetype2_properties
  # @see Responses::GetTextFreetype2Properties
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#gettextfreetype2properties
  class GetTextFreetype2Properties < Request
    json_name "GetTextFreetype2Properties"
    params(
      "source": {json_name: "source", type: Types::String},
    )
  end
  # @see Request::Mixin#set_text_freetype2_properties
  # @see Responses::SetTextFreetype2Properties
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#settextfreetype2properties
  class SetTextFreetype2Properties < Request
    json_name "SetTextFreetype2Properties"
    params(
      "source": {json_name: "source", type: Types::String},
      "color1": {json_name: "color1", type: Types::Optional[Types::Integer]},
      "color2": {json_name: "color2", type: Types::Optional[Types::Integer]},
      "custom_width": {json_name: "custom_width", type: Types::Optional[Types::Integer]},
      "drop_shadow": {json_name: "drop_shadow", type: Types::Optional[Types::Boolean]},
      "font": {json_name: "font", type: Types::Optional[Types::Object[{:face=>{:type=>Types::Optional[Types::String], :json_name=>"face"}, :flags=>{:type=>Types::Optional[Types::Integer], :json_name=>"flags"}, :size=>{:type=>Types::Optional[Types::Integer], :json_name=>"size"}, :style=>{:type=>Types::Optional[Types::String], :json_name=>"style"}}]]},
      "from_file": {json_name: "from_file", type: Types::Optional[Types::Boolean]},
      "log_mode": {json_name: "log_mode", type: Types::Optional[Types::Boolean]},
      "outline": {json_name: "outline", type: Types::Optional[Types::Boolean]},
      "text": {json_name: "text", type: Types::Optional[Types::String]},
      "text_file": {json_name: "text_file", type: Types::Optional[Types::String]},
      "word_wrap": {json_name: "word_wrap", type: Types::Optional[Types::Boolean]},
    )
  end
  # @see Request::Mixin#get_browser_source_properties
  # @see Responses::GetBrowserSourceProperties
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getbrowsersourceproperties
  class GetBrowserSourceProperties < Request
    json_name "GetBrowserSourceProperties"
    params(
      "source": {json_name: "source", type: Types::String},
    )
  end
  # @see Request::Mixin#set_browser_source_properties
  # @see Responses::SetBrowserSourceProperties
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setbrowsersourceproperties
  class SetBrowserSourceProperties < Request
    json_name "SetBrowserSourceProperties"
    params(
      "source": {json_name: "source", type: Types::String},
      "is_local_file": {json_name: "is_local_file", type: Types::Optional[Types::Boolean]},
      "local_file": {json_name: "local_file", type: Types::Optional[Types::String]},
      "url": {json_name: "url", type: Types::Optional[Types::String]},
      "css": {json_name: "css", type: Types::Optional[Types::String]},
      "width": {json_name: "width", type: Types::Optional[Types::Integer]},
      "height": {json_name: "height", type: Types::Optional[Types::Integer]},
      "fps": {json_name: "fps", type: Types::Optional[Types::Integer]},
      "shutdown": {json_name: "shutdown", type: Types::Optional[Types::Boolean]},
      "render": {json_name: "render", type: Types::Optional[Types::Boolean]},
    )
  end
  # @see Request::Mixin#get_special_sources
  # @see Responses::GetSpecialSources
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getspecialsources
  class GetSpecialSources < Request
    json_name "GetSpecialSources"
    params(
    )
  end
  # @see Request::Mixin#get_source_filters
  # @see Responses::GetSourceFilters
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getsourcefilters
  class GetSourceFilters < Request
    json_name "GetSourceFilters"
    params(
      "source_name": {json_name: "sourceName", type: Types::String},
    )
  end
  # @see Request::Mixin#get_source_filter_info
  # @see Responses::GetSourceFilterInfo
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getsourcefilterinfo
  class GetSourceFilterInfo < Request
    json_name "GetSourceFilterInfo"
    params(
      "source_name": {json_name: "sourceName", type: Types::String},
      "filter_name": {json_name: "filterName", type: Types::String},
    )
  end
  # @see Request::Mixin#add_filter_to_source
  # @see Responses::AddFilterToSource
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#addfiltertosource
  class AddFilterToSource < Request
    json_name "AddFilterToSource"
    params(
      "source_name": {json_name: "sourceName", type: Types::String},
      "filter_name": {json_name: "filterName", type: Types::String},
      "filter_type": {json_name: "filterType", type: Types::String},
      "filter_settings": {json_name: "filterSettings", type: Types::Object},
    )
  end
  # @see Request::Mixin#remove_filter_from_source
  # @see Responses::RemoveFilterFromSource
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#removefilterfromsource
  class RemoveFilterFromSource < Request
    json_name "RemoveFilterFromSource"
    params(
      "source_name": {json_name: "sourceName", type: Types::String},
      "filter_name": {json_name: "filterName", type: Types::String},
    )
  end
  # @see Request::Mixin#reorder_source_filter
  # @see Responses::ReorderSourceFilter
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#reordersourcefilter
  class ReorderSourceFilter < Request
    json_name "ReorderSourceFilter"
    params(
      "source_name": {json_name: "sourceName", type: Types::String},
      "filter_name": {json_name: "filterName", type: Types::String},
      "new_index": {json_name: "newIndex", type: Types::Integer},
    )
  end
  # @see Request::Mixin#move_source_filter
  # @see Responses::MoveSourceFilter
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#movesourcefilter
  class MoveSourceFilter < Request
    json_name "MoveSourceFilter"
    params(
      "source_name": {json_name: "sourceName", type: Types::String},
      "filter_name": {json_name: "filterName", type: Types::String},
      "movement_type": {json_name: "movementType", type: Types::String},
    )
  end
  # @see Request::Mixin#set_source_filter_settings
  # @see Responses::SetSourceFilterSettings
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setsourcefiltersettings
  class SetSourceFilterSettings < Request
    json_name "SetSourceFilterSettings"
    params(
      "source_name": {json_name: "sourceName", type: Types::String},
      "filter_name": {json_name: "filterName", type: Types::String},
      "filter_settings": {json_name: "filterSettings", type: Types::Object},
    )
  end
  # @see Request::Mixin#set_source_filter_visibility
  # @see Responses::SetSourceFilterVisibility
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setsourcefiltervisibility
  class SetSourceFilterVisibility < Request
    json_name "SetSourceFilterVisibility"
    params(
      "source_name": {json_name: "sourceName", type: Types::String},
      "filter_name": {json_name: "filterName", type: Types::String},
      "filter_enabled": {json_name: "filterEnabled", type: Types::Boolean},
    )
  end
  # @see Request::Mixin#get_audio_monitor_type
  # @see Responses::GetAudioMonitorType
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getaudiomonitortype
  class GetAudioMonitorType < Request
    json_name "GetAudioMonitorType"
    params(
      "source_name": {json_name: "sourceName", type: Types::String},
    )
  end
  # @see Request::Mixin#set_audio_monitor_type
  # @see Responses::SetAudioMonitorType
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setaudiomonitortype
  class SetAudioMonitorType < Request
    json_name "SetAudioMonitorType"
    params(
      "source_name": {json_name: "sourceName", type: Types::String},
      "monitor_type": {json_name: "monitorType", type: Types::String},
    )
  end
  # @see Request::Mixin#get_source_default_settings
  # @see Responses::GetSourceDefaultSettings
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getsourcedefaultsettings
  class GetSourceDefaultSettings < Request
    json_name "GetSourceDefaultSettings"
    params(
      "source_kind": {json_name: "sourceKind", type: Types::String},
    )
  end
  # @see Request::Mixin#take_source_screenshot
  # @see Responses::TakeSourceScreenshot
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#takesourcescreenshot
  class TakeSourceScreenshot < Request
    json_name "TakeSourceScreenshot"
    params(
      "source_name": {json_name: "sourceName", type: Types::Optional[Types::String]},
      "embed_picture_format": {json_name: "embedPictureFormat", type: Types::Optional[Types::String]},
      "save_to_file_path": {json_name: "saveToFilePath", type: Types::Optional[Types::String]},
      "file_format": {json_name: "fileFormat", type: Types::Optional[Types::String]},
      "compression_quality": {json_name: "compressionQuality", type: Types::Optional[Types::Integer]},
      "width": {json_name: "width", type: Types::Optional[Types::Integer]},
      "height": {json_name: "height", type: Types::Optional[Types::Integer]},
    )
  end
  # @see Request::Mixin#refresh_browser_source
  # @see Responses::RefreshBrowserSource
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#refreshbrowsersource
  class RefreshBrowserSource < Request
    json_name "RefreshBrowserSource"
    params(
      "source_name": {json_name: "sourceName", type: Types::String},
    )
  end
  # @see Request::Mixin#list_outputs
  # @see Responses::ListOutputs
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#listoutputs
  class ListOutputs < Request
    json_name "ListOutputs"
    params(
    )
  end
  # @see Request::Mixin#get_output_info
  # @see Responses::GetOutputInfo
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getoutputinfo
  class GetOutputInfo < Request
    json_name "GetOutputInfo"
    params(
      "output_name": {json_name: "outputName", type: Types::String},
    )
  end
  # @see Request::Mixin#start_output
  # @see Responses::StartOutput
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#startoutput
  class StartOutput < Request
    json_name "StartOutput"
    params(
      "output_name": {json_name: "outputName", type: Types::String},
    )
  end
  # @see Request::Mixin#stop_output
  # @see Responses::StopOutput
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#stopoutput
  class StopOutput < Request
    json_name "StopOutput"
    params(
      "output_name": {json_name: "outputName", type: Types::String},
      "force": {json_name: "force", type: Types::Optional[Types::Boolean]},
    )
  end
  # @see Request::Mixin#set_current_profile
  # @see Responses::SetCurrentProfile
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setcurrentprofile
  class SetCurrentProfile < Request
    json_name "SetCurrentProfile"
    params(
      "profile_name": {json_name: "profile-name", type: Types::String},
    )
  end
  # @see Request::Mixin#get_current_profile
  # @see Responses::GetCurrentProfile
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getcurrentprofile
  class GetCurrentProfile < Request
    json_name "GetCurrentProfile"
    params(
    )
  end
  # @see Request::Mixin#list_profiles
  # @see Responses::ListProfiles
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#listprofiles
  class ListProfiles < Request
    json_name "ListProfiles"
    params(
    )
  end
  # @see Request::Mixin#get_recording_status
  # @see Responses::GetRecordingStatus
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getrecordingstatus
  class GetRecordingStatus < Request
    json_name "GetRecordingStatus"
    params(
    )
  end
  # @see Request::Mixin#start_stop_recording
  # @see Responses::StartStopRecording
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#startstoprecording
  class StartStopRecording < Request
    json_name "StartStopRecording"
    params(
    )
  end
  # @see Request::Mixin#start_recording
  # @see Responses::StartRecording
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#startrecording
  class StartRecording < Request
    json_name "StartRecording"
    params(
    )
  end
  # @see Request::Mixin#stop_recording
  # @see Responses::StopRecording
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#stoprecording
  class StopRecording < Request
    json_name "StopRecording"
    params(
    )
  end
  # @see Request::Mixin#pause_recording
  # @see Responses::PauseRecording
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#pauserecording
  class PauseRecording < Request
    json_name "PauseRecording"
    params(
    )
  end
  # @see Request::Mixin#resume_recording
  # @see Responses::ResumeRecording
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#resumerecording
  class ResumeRecording < Request
    json_name "ResumeRecording"
    params(
    )
  end
  # @see Request::Mixin#set_recording_folder
  # @see Responses::SetRecordingFolder
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setrecordingfolder
  class SetRecordingFolder < Request
    json_name "SetRecordingFolder"
    params(
      "rec_folder": {json_name: "rec-folder", type: Types::String},
    )
  end
  # @see Request::Mixin#get_recording_folder
  # @see Responses::GetRecordingFolder
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getrecordingfolder
  class GetRecordingFolder < Request
    json_name "GetRecordingFolder"
    params(
    )
  end
  # @see Request::Mixin#get_replay_buffer_status
  # @see Responses::GetReplayBufferStatus
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getreplaybufferstatus
  class GetReplayBufferStatus < Request
    json_name "GetReplayBufferStatus"
    params(
    )
  end
  # @see Request::Mixin#start_stop_replay_buffer
  # @see Responses::StartStopReplayBuffer
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#startstopreplaybuffer
  class StartStopReplayBuffer < Request
    json_name "StartStopReplayBuffer"
    params(
    )
  end
  # @see Request::Mixin#start_replay_buffer
  # @see Responses::StartReplayBuffer
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#startreplaybuffer
  class StartReplayBuffer < Request
    json_name "StartReplayBuffer"
    params(
    )
  end
  # @see Request::Mixin#stop_replay_buffer
  # @see Responses::StopReplayBuffer
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#stopreplaybuffer
  class StopReplayBuffer < Request
    json_name "StopReplayBuffer"
    params(
    )
  end
  # @see Request::Mixin#save_replay_buffer
  # @see Responses::SaveReplayBuffer
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#savereplaybuffer
  class SaveReplayBuffer < Request
    json_name "SaveReplayBuffer"
    params(
    )
  end
  # @see Request::Mixin#set_current_scene_collection
  # @see Responses::SetCurrentSceneCollection
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setcurrentscenecollection
  class SetCurrentSceneCollection < Request
    json_name "SetCurrentSceneCollection"
    params(
      "sc_name": {json_name: "sc-name", type: Types::String},
    )
  end
  # @see Request::Mixin#get_current_scene_collection
  # @see Responses::GetCurrentSceneCollection
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getcurrentscenecollection
  class GetCurrentSceneCollection < Request
    json_name "GetCurrentSceneCollection"
    params(
    )
  end
  # @see Request::Mixin#list_scene_collections
  # @see Responses::ListSceneCollections
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#listscenecollections
  class ListSceneCollections < Request
    json_name "ListSceneCollections"
    params(
    )
  end
  # @see Request::Mixin#get_scene_item_list
  # @see Responses::GetSceneItemList
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getsceneitemlist
  class GetSceneItemList < Request
    json_name "GetSceneItemList"
    params(
      "scene_name": {json_name: "sceneName", type: Types::Optional[Types::String]},
    )
  end
  # @see Request::Mixin#get_scene_item_properties
  # @see Responses::GetSceneItemProperties
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getsceneitemproperties
  class GetSceneItemProperties < Request
    json_name "GetSceneItemProperties"
    params(
      "scene_name": {json_name: "scene-name", type: Types::Optional[Types::String]},
      "item": {json_name: "item", type: Types::StringOrObject[{:name=>{:type=>Types::Optional[Types::String], :json_name=>"name"}, :id=>{:type=>Types::Optional[Types::Integer], :json_name=>"id"}}]},
    )
  end
  # @see Request::Mixin#set_scene_item_properties
  # @see Responses::SetSceneItemProperties
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setsceneitemproperties
  class SetSceneItemProperties < Request
    json_name "SetSceneItemProperties"
    params(
      "scene_name": {json_name: "scene-name", type: Types::Optional[Types::String]},
      "item": {json_name: "item", type: Types::StringOrObject[{:name=>{:type=>Types::Optional[Types::String], :json_name=>"name"}, :id=>{:type=>Types::Optional[Types::Integer], :json_name=>"id"}}]},
      "position": {json_name: "position", type: Types::Object[{:x=>{:type=>Types::Optional[Types::Float], :json_name=>"x"}, :y=>{:type=>Types::Optional[Types::Float], :json_name=>"y"}, :alignment=>{:type=>Types::Optional[Types::Integer], :json_name=>"alignment"}}]},
      "rotation": {json_name: "rotation", type: Types::Optional[Types::Float]},
      "scale": {json_name: "scale", type: Types::Object[{:x=>{:type=>Types::Optional[Types::Float], :json_name=>"x"}, :y=>{:type=>Types::Optional[Types::Float], :json_name=>"y"}, :filter=>{:type=>Types::Optional[Types::String], :json_name=>"filter"}}]},
      "crop": {json_name: "crop", type: Types::Object[{:top=>{:type=>Types::Optional[Types::Integer], :json_name=>"top"}, :bottom=>{:type=>Types::Optional[Types::Integer], :json_name=>"bottom"}, :left=>{:type=>Types::Optional[Types::Integer], :json_name=>"left"}, :right=>{:type=>Types::Optional[Types::Integer], :json_name=>"right"}}]},
      "visible": {json_name: "visible", type: Types::Optional[Types::Boolean]},
      "locked": {json_name: "locked", type: Types::Optional[Types::Boolean]},
      "bounds": {json_name: "bounds", type: Types::Object[{:type=>{:type=>Types::Optional[Types::String], :json_name=>"type"}, :alignment=>{:type=>Types::Optional[Types::Integer], :json_name=>"alignment"}, :x=>{:type=>Types::Optional[Types::Float], :json_name=>"x"}, :y=>{:type=>Types::Optional[Types::Float], :json_name=>"y"}}]},
    )
  end
  # @see Request::Mixin#reset_scene_item
  # @see Responses::ResetSceneItem
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#resetsceneitem
  class ResetSceneItem < Request
    json_name "ResetSceneItem"
    params(
      "scene_name": {json_name: "scene-name", type: Types::Optional[Types::String]},
      "item": {json_name: "item", type: Types::StringOrObject[{:name=>{:type=>Types::Optional[Types::String], :json_name=>"name"}, :id=>{:type=>Types::Optional[Types::Integer], :json_name=>"id"}}]},
    )
  end
  # @see Request::Mixin#set_scene_item_render
  # @see Responses::SetSceneItemRender
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setsceneitemrender
  class SetSceneItemRender < Request
    json_name "SetSceneItemRender"
    params(
      "scene_name": {json_name: "scene-name", type: Types::Optional[Types::String]},
      "source": {json_name: "source", type: Types::Optional[Types::String]},
      "item": {json_name: "item", type: Types::Optional[Types::Integer]},
      "render": {json_name: "render", type: Types::Boolean},
    )
  end
  # @see Request::Mixin#set_scene_item_position
  # @see Responses::SetSceneItemPosition
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setsceneitemposition
  class SetSceneItemPosition < Request
    json_name "SetSceneItemPosition"
    params(
      "scene_name": {json_name: "scene-name", type: Types::Optional[Types::String]},
      "item": {json_name: "item", type: Types::String},
      "x": {json_name: "x", type: Types::Float},
      "y": {json_name: "y", type: Types::Float},
    )
  end
  # @see Request::Mixin#set_scene_item_transform
  # @see Responses::SetSceneItemTransform
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setsceneitemtransform
  class SetSceneItemTransform < Request
    json_name "SetSceneItemTransform"
    params(
      "scene_name": {json_name: "scene-name", type: Types::Optional[Types::String]},
      "item": {json_name: "item", type: Types::String},
      "x_scale": {json_name: "x-scale", type: Types::Float},
      "y_scale": {json_name: "y-scale", type: Types::Float},
      "rotation": {json_name: "rotation", type: Types::Float},
    )
  end
  # @see Request::Mixin#set_scene_item_crop
  # @see Responses::SetSceneItemCrop
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setsceneitemcrop
  class SetSceneItemCrop < Request
    json_name "SetSceneItemCrop"
    params(
      "scene_name": {json_name: "scene-name", type: Types::Optional[Types::String]},
      "item": {json_name: "item", type: Types::String},
      "top": {json_name: "top", type: Types::Integer},
      "bottom": {json_name: "bottom", type: Types::Integer},
      "left": {json_name: "left", type: Types::Integer},
      "right": {json_name: "right", type: Types::Integer},
    )
  end
  # @see Request::Mixin#delete_scene_item
  # @see Responses::DeleteSceneItem
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#deletesceneitem
  class DeleteSceneItem < Request
    json_name "DeleteSceneItem"
    params(
      "scene": {json_name: "scene", type: Types::Optional[Types::String]},
      "item": {json_name: "item", type: Types::Object[{:name=>{:type=>Types::String, :json_name=>"name"}, :id=>{:type=>Types::Integer, :json_name=>"id"}}]},
    )
  end
  # @see Request::Mixin#add_scene_item
  # @see Responses::AddSceneItem
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#addsceneitem
  class AddSceneItem < Request
    json_name "AddSceneItem"
    params(
      "scene_name": {json_name: "sceneName", type: Types::String},
      "source_name": {json_name: "sourceName", type: Types::String},
      "set_visible": {json_name: "setVisible", type: Types::Optional[Types::Boolean]},
    )
  end
  # @see Request::Mixin#duplicate_scene_item
  # @see Responses::DuplicateSceneItem
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#duplicatesceneitem
  class DuplicateSceneItem < Request
    json_name "DuplicateSceneItem"
    params(
      "from_scene": {json_name: "fromScene", type: Types::Optional[Types::String]},
      "to_scene": {json_name: "toScene", type: Types::Optional[Types::String]},
      "item": {json_name: "item", type: Types::Object[{:name=>{:type=>Types::String, :json_name=>"name"}, :id=>{:type=>Types::Integer, :json_name=>"id"}}]},
    )
  end
  # @see Request::Mixin#set_current_scene
  # @see Responses::SetCurrentScene
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setcurrentscene
  class SetCurrentScene < Request
    json_name "SetCurrentScene"
    params(
      "scene_name": {json_name: "scene-name", type: Types::String},
    )
  end
  # @see Request::Mixin#get_current_scene
  # @see Responses::GetCurrentScene
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getcurrentscene
  class GetCurrentScene < Request
    json_name "GetCurrentScene"
    params(
    )
  end
  # @see Request::Mixin#get_scene_list
  # @see Responses::GetSceneList
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getscenelist
  class GetSceneList < Request
    json_name "GetSceneList"
    params(
    )
  end
  # @see Request::Mixin#create_scene
  # @see Responses::CreateScene
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#createscene
  class CreateScene < Request
    json_name "CreateScene"
    params(
      "scene_name": {json_name: "sceneName", type: Types::String},
    )
  end
  # @see Request::Mixin#reorder_scene_items
  # @see Responses::ReorderSceneItems
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#reordersceneitems
  class ReorderSceneItems < Request
    json_name "ReorderSceneItems"
    params(
      "scene": {json_name: "scene", type: Types::Optional[Types::String]},
      "items": {json_name: "items", type: Types::Array[Types::Object[{:id=>{:type=>Types::Optional[Types::Integer], :json_name=>"id"}, :name=>{:type=>Types::Optional[Types::String], :json_name=>"name"}}]]},
    )
  end
  # @see Request::Mixin#set_scene_transition_override
  # @see Responses::SetSceneTransitionOverride
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setscenetransitionoverride
  class SetSceneTransitionOverride < Request
    json_name "SetSceneTransitionOverride"
    params(
      "scene_name": {json_name: "sceneName", type: Types::String},
      "transition_name": {json_name: "transitionName", type: Types::String},
      "transition_duration": {json_name: "transitionDuration", type: Types::Optional[Types::Integer]},
    )
  end
  # @see Request::Mixin#remove_scene_transition_override
  # @see Responses::RemoveSceneTransitionOverride
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#removescenetransitionoverride
  class RemoveSceneTransitionOverride < Request
    json_name "RemoveSceneTransitionOverride"
    params(
      "scene_name": {json_name: "sceneName", type: Types::String},
    )
  end
  # @see Request::Mixin#get_scene_transition_override
  # @see Responses::GetSceneTransitionOverride
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getscenetransitionoverride
  class GetSceneTransitionOverride < Request
    json_name "GetSceneTransitionOverride"
    params(
      "scene_name": {json_name: "sceneName", type: Types::String},
    )
  end
  # @see Request::Mixin#get_streaming_status
  # @see Responses::GetStreamingStatus
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getstreamingstatus
  class GetStreamingStatus < Request
    json_name "GetStreamingStatus"
    params(
    )
  end
  # @see Request::Mixin#start_stop_streaming
  # @see Responses::StartStopStreaming
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#startstopstreaming
  class StartStopStreaming < Request
    json_name "StartStopStreaming"
    params(
    )
  end
  # @see Request::Mixin#start_streaming
  # @see Responses::StartStreaming
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#startstreaming
  class StartStreaming < Request
    json_name "StartStreaming"
    params(
      "stream": {json_name: "stream", type: Types::Optional[Types::Object[{:type=>{:type=>Types::Optional[Types::String], :json_name=>"type"}, :metadata=>{:type=>Types::Optional[Types::Object], :json_name=>"metadata"}, :settings=>{:type=>Types::Optional[Types::Object[{:server=>{:type=>Types::Optional[Types::String], :json_name=>"settings"}, :key=>{:type=>Types::Optional[Types::String], :json_name=>"settings"}, :use_auth=>{:type=>Types::Optional[Types::Boolean], :json_name=>"settings"}, :username=>{:type=>Types::Optional[Types::String], :json_name=>"settings"}, :password=>{:type=>Types::Optional[Types::String], :json_name=>"settings"}}]], :json_name=>"settings"}}]]},
    )
  end
  # @see Request::Mixin#stop_streaming
  # @see Responses::StopStreaming
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#stopstreaming
  class StopStreaming < Request
    json_name "StopStreaming"
    params(
    )
  end
  # @see Request::Mixin#set_stream_settings
  # @see Responses::SetStreamSettings
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setstreamsettings
  class SetStreamSettings < Request
    json_name "SetStreamSettings"
    params(
      "type": {json_name: "type", type: Types::String},
      "settings": {json_name: "settings", type: Types::Object[{:server=>{:type=>Types::Optional[Types::String], :json_name=>"server"}, :key=>{:type=>Types::Optional[Types::String], :json_name=>"key"}, :use_auth=>{:type=>Types::Optional[Types::Boolean], :json_name=>"use_auth"}, :username=>{:type=>Types::Optional[Types::String], :json_name=>"username"}, :password=>{:type=>Types::Optional[Types::String], :json_name=>"password"}}]},
      "save": {json_name: "save", type: Types::Boolean},
    )
  end
  # @see Request::Mixin#get_stream_settings
  # @see Responses::GetStreamSettings
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getstreamsettings
  class GetStreamSettings < Request
    json_name "GetStreamSettings"
    params(
    )
  end
  # @see Request::Mixin#save_stream_settings
  # @see Responses::SaveStreamSettings
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#savestreamsettings
  class SaveStreamSettings < Request
    json_name "SaveStreamSettings"
    params(
    )
  end
  # @see Request::Mixin#send_captions
  # @see Responses::SendCaptions
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#sendcaptions
  class SendCaptions < Request
    json_name "SendCaptions"
    params(
      "text": {json_name: "text", type: Types::String},
    )
  end
  # @see Request::Mixin#get_studio_mode_status
  # @see Responses::GetStudioModeStatus
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getstudiomodestatus
  class GetStudioModeStatus < Request
    json_name "GetStudioModeStatus"
    params(
    )
  end
  # @see Request::Mixin#get_preview_scene
  # @see Responses::GetPreviewScene
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getpreviewscene
  class GetPreviewScene < Request
    json_name "GetPreviewScene"
    params(
    )
  end
  # @see Request::Mixin#set_preview_scene
  # @see Responses::SetPreviewScene
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setpreviewscene
  class SetPreviewScene < Request
    json_name "SetPreviewScene"
    params(
      "scene_name": {json_name: "scene-name", type: Types::String},
    )
  end
  # @see Request::Mixin#transition_to_program
  # @see Responses::TransitionToProgram
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#transitiontoprogram
  class TransitionToProgram < Request
    json_name "TransitionToProgram"
    params(
      "with_transition": {json_name: "with-transition", type: Types::Optional[Types::Object[{:name=>{:type=>Types::String, :json_name=>"name"}, :duration=>{:type=>Types::Optional[Types::Integer], :json_name=>"duration"}}]]},
    )
  end
  # @see Request::Mixin#enable_studio_mode
  # @see Responses::EnableStudioMode
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#enablestudiomode
  class EnableStudioMode < Request
    json_name "EnableStudioMode"
    params(
    )
  end
  # @see Request::Mixin#disable_studio_mode
  # @see Responses::DisableStudioMode
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#disablestudiomode
  class DisableStudioMode < Request
    json_name "DisableStudioMode"
    params(
    )
  end
  # @see Request::Mixin#toggle_studio_mode
  # @see Responses::ToggleStudioMode
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#togglestudiomode
  class ToggleStudioMode < Request
    json_name "ToggleStudioMode"
    params(
    )
  end
  # @see Request::Mixin#get_transition_list
  # @see Responses::GetTransitionList
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#gettransitionlist
  class GetTransitionList < Request
    json_name "GetTransitionList"
    params(
    )
  end
  # @see Request::Mixin#get_current_transition
  # @see Responses::GetCurrentTransition
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getcurrenttransition
  class GetCurrentTransition < Request
    json_name "GetCurrentTransition"
    params(
    )
  end
  # @see Request::Mixin#set_current_transition
  # @see Responses::SetCurrentTransition
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setcurrenttransition
  class SetCurrentTransition < Request
    json_name "SetCurrentTransition"
    params(
      "transition_name": {json_name: "transition-name", type: Types::String},
    )
  end
  # @see Request::Mixin#set_transition_duration
  # @see Responses::SetTransitionDuration
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#settransitionduration
  class SetTransitionDuration < Request
    json_name "SetTransitionDuration"
    params(
      "duration": {json_name: "duration", type: Types::Integer},
    )
  end
  # @see Request::Mixin#get_transition_duration
  # @see Responses::GetTransitionDuration
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#gettransitionduration
  class GetTransitionDuration < Request
    json_name "GetTransitionDuration"
    params(
    )
  end
  # @see Request::Mixin#get_transition_position
  # @see Responses::GetTransitionPosition
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#gettransitionposition
  class GetTransitionPosition < Request
    json_name "GetTransitionPosition"
    params(
    )
  end
  # @see Request::Mixin#get_transition_settings
  # @see Responses::GetTransitionSettings
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#gettransitionsettings
  class GetTransitionSettings < Request
    json_name "GetTransitionSettings"
    params(
      "transition_name": {json_name: "transitionName", type: Types::String},
    )
  end
  # @see Request::Mixin#set_transition_settings
  # @see Responses::SetTransitionSettings
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#settransitionsettings
  class SetTransitionSettings < Request
    json_name "SetTransitionSettings"
    params(
      "transition_name": {json_name: "transitionName", type: Types::String},
      "transition_settings": {json_name: "transitionSettings", type: Types::Object},
    )
  end
  # @see Request::Mixin#release_t_bar
  # @see Responses::ReleaseTBar
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#releasetbar
  class ReleaseTBar < Request
    json_name "ReleaseTBar"
    params(
    )
  end
  # @see Request::Mixin#set_t_bar_position
  # @see Responses::SetTBarPosition
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#settbarposition
  class SetTBarPosition < Request
    json_name "SetTBarPosition"
    params(
      "position": {json_name: "position", type: Types::Float},
      "release": {json_name: "release", type: Types::Optional[Types::Boolean]},
    )
  end
  # @see Request::Mixin#get_virtual_cam_status
  # @see Responses::GetVirtualCamStatus
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getvirtualcamstatus
  class GetVirtualCamStatus < Request
    json_name "GetVirtualCamStatus"
    params(
    )
  end
  # @see Request::Mixin#start_stop_virtual_cam
  # @see Responses::StartStopVirtualCam
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#startstopvirtualcam
  class StartStopVirtualCam < Request
    json_name "StartStopVirtualCam"
    params(
    )
  end
  # @see Request::Mixin#start_virtual_cam
  # @see Responses::StartVirtualCam
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#startvirtualcam
  class StartVirtualCam < Request
    json_name "StartVirtualCam"
    params(
    )
  end
  # @see Request::Mixin#stop_virtual_cam
  # @see Responses::StopVirtualCam
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#stopvirtualcam
  class StopVirtualCam < Request
    json_name "StopVirtualCam"
    params(
    )
  end
module Request::Mixin
  # Sends <tt>GetVersion</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getversion
  # @return [Future<Responses::GetVersion>]
  def get_version()
    send_request(Requests::GetVersion.new({}))
  end
  # Sends <tt>GetAuthRequired</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getauthrequired
  # @return [Future<Responses::GetAuthRequired>]
  def get_auth_required()
    send_request(Requests::GetAuthRequired.new({}))
  end
  # Sends <tt>Authenticate</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#authenticate
  # @param auth [String] <tt>auth</tt> field
  # @return [Future<Responses::Authenticate>]
  def authenticate(auth:)
    send_request(Requests::Authenticate.new({auth: auth}))
  end
  # Sends <tt>SetHeartbeat</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setheartbeat
  # @param enable [Boolean] <tt>enable</tt> field
  # @deprecated This type of request is deprecated.
  # @return [Future<Responses::SetHeartbeat>]
  def set_heartbeat(enable:)
    send_request(Requests::SetHeartbeat.new({enable: enable}))
  end
  # Sends <tt>SetFilenameFormatting</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setfilenameformatting
  # @param filename_formatting [String] <tt>filename-formatting</tt> field
  # @return [Future<Responses::SetFilenameFormatting>]
  def set_filename_formatting(filename_formatting:)
    send_request(Requests::SetFilenameFormatting.new({filename_formatting: filename_formatting}))
  end
  # Sends <tt>GetFilenameFormatting</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getfilenameformatting
  # @return [Future<Responses::GetFilenameFormatting>]
  def get_filename_formatting()
    send_request(Requests::GetFilenameFormatting.new({}))
  end
  # Sends <tt>GetStats</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getstats
  # @return [Future<Responses::GetStats>]
  def get_stats()
    send_request(Requests::GetStats.new({}))
  end
  # Sends <tt>BroadcastCustomMessage</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#broadcastcustommessage
  # @param realm [String] <tt>realm</tt> field
  # @param data [Hash] <tt>data</tt> field
  # @return [Future<Responses::BroadcastCustomMessage>]
  def broadcast_custom_message(realm:, data:)
    send_request(Requests::BroadcastCustomMessage.new({realm: realm, data: data}))
  end
  # Sends <tt>GetVideoInfo</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getvideoinfo
  # @return [Future<Responses::GetVideoInfo>]
  def get_video_info()
    send_request(Requests::GetVideoInfo.new({}))
  end
  # Sends <tt>OpenProjector</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#openprojector
  # @param type [String, nil] <tt>type</tt> field
  # @param monitor [Integer, nil] <tt>monitor</tt> field
  # @param geometry [String, nil] <tt>geometry</tt> field
  # @param name [String, nil] <tt>name</tt> field
  # @return [Future<Responses::OpenProjector>]
  def open_projector(type: nil, monitor: nil, geometry: nil, name: nil)
    send_request(Requests::OpenProjector.new({type: type, monitor: monitor, geometry: geometry, name: name}))
  end
  # Sends <tt>TriggerHotkeyByName</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#triggerhotkeybyname
  # @param hotkey_name [String] <tt>hotkeyName</tt> field
  # @return [Future<Responses::TriggerHotkeyByName>]
  def trigger_hotkey_by_name(hotkey_name:)
    send_request(Requests::TriggerHotkeyByName.new({hotkey_name: hotkey_name}))
  end
  # Sends <tt>TriggerHotkeyBySequence</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#triggerhotkeybysequence
  # @param key_id [String] <tt>keyId</tt> field
  # @param key_modifiers [Hash, nil] <tt>keyModifiers</tt> field
  # @return [Future<Responses::TriggerHotkeyBySequence>]
  def trigger_hotkey_by_sequence(key_id:, key_modifiers: nil)
    send_request(Requests::TriggerHotkeyBySequence.new({key_id: key_id, key_modifiers: key_modifiers}))
  end
  # Sends <tt>ExecuteBatch</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#executebatch
  # @param requests [Array<Hash>] <tt>requests</tt> field
  # @param abort_on_fail [Boolean, nil] <tt>abortOnFail</tt> field
  # @return [Future<Responses::ExecuteBatch>]
  def execute_batch(requests:, abort_on_fail: nil)
    send_request(Requests::ExecuteBatch.new({requests: requests, abort_on_fail: abort_on_fail}))
  end
  # Sends <tt>Sleep</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#sleep
  # @param sleep_millis [Integer] <tt>sleepMillis</tt> field
  # @return [Future<Responses::Sleep>]
  def sleep(sleep_millis:)
    send_request(Requests::Sleep.new({sleep_millis: sleep_millis}))
  end
  # Sends <tt>PlayPauseMedia</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#playpausemedia
  # @param source_name [String] <tt>sourceName</tt> field
  # @param play_pause [Boolean] <tt>playPause</tt> field
  # @return [Future<Responses::PlayPauseMedia>]
  def play_pause_media(source_name:, play_pause:)
    send_request(Requests::PlayPauseMedia.new({source_name: source_name, play_pause: play_pause}))
  end
  # Sends <tt>RestartMedia</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#restartmedia
  # @param source_name [String] <tt>sourceName</tt> field
  # @return [Future<Responses::RestartMedia>]
  def restart_media(source_name:)
    send_request(Requests::RestartMedia.new({source_name: source_name}))
  end
  # Sends <tt>StopMedia</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#stopmedia
  # @param source_name [String] <tt>sourceName</tt> field
  # @return [Future<Responses::StopMedia>]
  def stop_media(source_name:)
    send_request(Requests::StopMedia.new({source_name: source_name}))
  end
  # Sends <tt>NextMedia</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#nextmedia
  # @param source_name [String] <tt>sourceName</tt> field
  # @return [Future<Responses::NextMedia>]
  def next_media(source_name:)
    send_request(Requests::NextMedia.new({source_name: source_name}))
  end
  # Sends <tt>PreviousMedia</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#previousmedia
  # @param source_name [String] <tt>sourceName</tt> field
  # @return [Future<Responses::PreviousMedia>]
  def previous_media(source_name:)
    send_request(Requests::PreviousMedia.new({source_name: source_name}))
  end
  # Sends <tt>GetMediaDuration</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getmediaduration
  # @param source_name [String] <tt>sourceName</tt> field
  # @return [Future<Responses::GetMediaDuration>]
  def get_media_duration(source_name:)
    send_request(Requests::GetMediaDuration.new({source_name: source_name}))
  end
  # Sends <tt>GetMediaTime</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getmediatime
  # @param source_name [String] <tt>sourceName</tt> field
  # @return [Future<Responses::GetMediaTime>]
  def get_media_time(source_name:)
    send_request(Requests::GetMediaTime.new({source_name: source_name}))
  end
  # Sends <tt>SetMediaTime</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setmediatime
  # @param source_name [String] <tt>sourceName</tt> field
  # @param timestamp [Integer] <tt>timestamp</tt> field
  # @return [Future<Responses::SetMediaTime>]
  def set_media_time(source_name:, timestamp:)
    send_request(Requests::SetMediaTime.new({source_name: source_name, timestamp: timestamp}))
  end
  # Sends <tt>ScrubMedia</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#scrubmedia
  # @param source_name [String] <tt>sourceName</tt> field
  # @param time_offset [Integer] <tt>timeOffset</tt> field
  # @return [Future<Responses::ScrubMedia>]
  def scrub_media(source_name:, time_offset:)
    send_request(Requests::ScrubMedia.new({source_name: source_name, time_offset: time_offset}))
  end
  # Sends <tt>GetMediaState</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getmediastate
  # @param source_name [String] <tt>sourceName</tt> field
  # @return [Future<Responses::GetMediaState>]
  def get_media_state(source_name:)
    send_request(Requests::GetMediaState.new({source_name: source_name}))
  end
  # Sends <tt>GetMediaSourcesList</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getmediasourceslist
  # @return [Future<Responses::GetMediaSourcesList>]
  def get_media_sources_list()
    send_request(Requests::GetMediaSourcesList.new({}))
  end
  # Sends <tt>CreateSource</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#createsource
  # @param source_name [String] <tt>sourceName</tt> field
  # @param source_kind [String] <tt>sourceKind</tt> field
  # @param scene_name [String] <tt>sceneName</tt> field
  # @param source_settings [Hash, nil] <tt>sourceSettings</tt> field
  # @param set_visible [Boolean, nil] <tt>setVisible</tt> field
  # @return [Future<Responses::CreateSource>]
  def create_source(source_name:, source_kind:, scene_name:, source_settings: nil, set_visible: nil)
    send_request(Requests::CreateSource.new({source_name: source_name, source_kind: source_kind, scene_name: scene_name, source_settings: source_settings, set_visible: set_visible}))
  end
  # Sends <tt>GetSourcesList</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getsourceslist
  # @return [Future<Responses::GetSourcesList>]
  def get_sources_list()
    send_request(Requests::GetSourcesList.new({}))
  end
  # Sends <tt>GetSourceTypesList</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getsourcetypeslist
  # @return [Future<Responses::GetSourceTypesList>]
  def get_source_types_list()
    send_request(Requests::GetSourceTypesList.new({}))
  end
  # Sends <tt>GetVolume</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getvolume
  # @param source [String] <tt>source</tt> field
  # @param use_decibel [Boolean, nil] <tt>useDecibel</tt> field
  # @return [Future<Responses::GetVolume>]
  def get_volume(source:, use_decibel: nil)
    send_request(Requests::GetVolume.new({source: source, use_decibel: use_decibel}))
  end
  # Sends <tt>SetVolume</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setvolume
  # @param source [String] <tt>source</tt> field
  # @param volume [Float] <tt>volume</tt> field
  # @param use_decibel [Boolean, nil] <tt>useDecibel</tt> field
  # @return [Future<Responses::SetVolume>]
  def set_volume(source:, volume:, use_decibel: nil)
    send_request(Requests::SetVolume.new({source: source, volume: volume, use_decibel: use_decibel}))
  end
  # Sends <tt>SetTracks</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#settracks
  # @param source_name [String] <tt>sourceName</tt> field
  # @param track [Integer] <tt>track</tt> field
  # @param active [Boolean] <tt>active</tt> field
  # @return [Future<Responses::SetTracks>]
  def set_tracks(source_name:, track:, active:)
    send_request(Requests::SetTracks.new({source_name: source_name, track: track, active: active}))
  end
  # Sends <tt>GetTracks</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#gettracks
  # @param source_name [String] <tt>sourceName</tt> field
  # @return [Future<Responses::GetTracks>]
  def get_tracks(source_name:)
    send_request(Requests::GetTracks.new({source_name: source_name}))
  end
  # Sends <tt>GetMute</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getmute
  # @param source [String] <tt>source</tt> field
  # @return [Future<Responses::GetMute>]
  def get_mute(source:)
    send_request(Requests::GetMute.new({source: source}))
  end
  # Sends <tt>SetMute</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setmute
  # @param source [String] <tt>source</tt> field
  # @param mute [Boolean] <tt>mute</tt> field
  # @return [Future<Responses::SetMute>]
  def set_mute(source:, mute:)
    send_request(Requests::SetMute.new({source: source, mute: mute}))
  end
  # Sends <tt>ToggleMute</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#togglemute
  # @param source [String] <tt>source</tt> field
  # @return [Future<Responses::ToggleMute>]
  def toggle_mute(source:)
    send_request(Requests::ToggleMute.new({source: source}))
  end
  # Sends <tt>GetSourceActive</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getsourceactive
  # @param source_name [String] <tt>sourceName</tt> field
  # @return [Future<Responses::GetSourceActive>]
  def get_source_active(source_name:)
    send_request(Requests::GetSourceActive.new({source_name: source_name}))
  end
  # Sends <tt>GetAudioActive</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getaudioactive
  # @param source_name [String] <tt>sourceName</tt> field
  # @return [Future<Responses::GetAudioActive>]
  def get_audio_active(source_name:)
    send_request(Requests::GetAudioActive.new({source_name: source_name}))
  end
  # Sends <tt>SetSourceName</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setsourcename
  # @param source_name [String] <tt>sourceName</tt> field
  # @param new_name [String] <tt>newName</tt> field
  # @return [Future<Responses::SetSourceName>]
  def set_source_name(source_name:, new_name:)
    send_request(Requests::SetSourceName.new({source_name: source_name, new_name: new_name}))
  end
  # Sends <tt>SetSyncOffset</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setsyncoffset
  # @param source [String] <tt>source</tt> field
  # @param offset [Integer] <tt>offset</tt> field
  # @return [Future<Responses::SetSyncOffset>]
  def set_sync_offset(source:, offset:)
    send_request(Requests::SetSyncOffset.new({source: source, offset: offset}))
  end
  # Sends <tt>GetSyncOffset</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getsyncoffset
  # @param source [String] <tt>source</tt> field
  # @return [Future<Responses::GetSyncOffset>]
  def get_sync_offset(source:)
    send_request(Requests::GetSyncOffset.new({source: source}))
  end
  # Sends <tt>GetSourceSettings</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getsourcesettings
  # @param source_name [String] <tt>sourceName</tt> field
  # @param source_type [String, nil] <tt>sourceType</tt> field
  # @return [Future<Responses::GetSourceSettings>]
  def get_source_settings(source_name:, source_type: nil)
    send_request(Requests::GetSourceSettings.new({source_name: source_name, source_type: source_type}))
  end
  # Sends <tt>SetSourceSettings</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setsourcesettings
  # @param source_name [String] <tt>sourceName</tt> field
  # @param source_type [String, nil] <tt>sourceType</tt> field
  # @param source_settings [Hash] <tt>sourceSettings</tt> field
  # @return [Future<Responses::SetSourceSettings>]
  def set_source_settings(source_name:, source_type: nil, source_settings:)
    send_request(Requests::SetSourceSettings.new({source_name: source_name, source_type: source_type, source_settings: source_settings}))
  end
  # Sends <tt>GetTextGDIPlusProperties</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#gettextgdiplusproperties
  # @param source [String] <tt>source</tt> field
  # @return [Future<Responses::GetTextGDIPlusProperties>]
  def get_text_gdi_plus_properties(source:)
    send_request(Requests::GetTextGDIPlusProperties.new({source: source}))
  end
  # Sends <tt>SetTextGDIPlusProperties</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#settextgdiplusproperties
  # @param source [String] <tt>source</tt> field
  # @param align [String, nil] <tt>align</tt> field
  # @param bk_color [Integer, nil] <tt>bk_color</tt> field
  # @param bk_opacity [Integer, nil] <tt>bk_opacity</tt> field
  # @param chatlog [Boolean, nil] <tt>chatlog</tt> field
  # @param chatlog_lines [Integer, nil] <tt>chatlog_lines</tt> field
  # @param color [Integer, nil] <tt>color</tt> field
  # @param extents [Boolean, nil] <tt>extents</tt> field
  # @param extents_cx [Integer, nil] <tt>extents_cx</tt> field
  # @param extents_cy [Integer, nil] <tt>extents_cy</tt> field
  # @param file [String, nil] <tt>file</tt> field
  # @param read_from_file [Boolean, nil] <tt>read_from_file</tt> field
  # @param font [Hash, nil] <tt>font</tt> field
  # @param gradient [Boolean, nil] <tt>gradient</tt> field
  # @param gradient_color [Integer, nil] <tt>gradient_color</tt> field
  # @param gradient_dir [Float, nil] <tt>gradient_dir</tt> field
  # @param gradient_opacity [Integer, nil] <tt>gradient_opacity</tt> field
  # @param outline [Boolean, nil] <tt>outline</tt> field
  # @param outline_color [Integer, nil] <tt>outline_color</tt> field
  # @param outline_size [Integer, nil] <tt>outline_size</tt> field
  # @param outline_opacity [Integer, nil] <tt>outline_opacity</tt> field
  # @param text [String, nil] <tt>text</tt> field
  # @param valign [String, nil] <tt>valign</tt> field
  # @param vertical [Boolean, nil] <tt>vertical</tt> field
  # @param render [Boolean, nil] <tt>render</tt> field
  # @return [Future<Responses::SetTextGDIPlusProperties>]
  def set_text_gdi_plus_properties(source:, align: nil, bk_color: nil, bk_opacity: nil, chatlog: nil, chatlog_lines: nil, color: nil, extents: nil, extents_cx: nil, extents_cy: nil, file: nil, read_from_file: nil, font: nil, gradient: nil, gradient_color: nil, gradient_dir: nil, gradient_opacity: nil, outline: nil, outline_color: nil, outline_size: nil, outline_opacity: nil, text: nil, valign: nil, vertical: nil, render: nil)
    send_request(Requests::SetTextGDIPlusProperties.new({source: source, align: align, bk_color: bk_color, bk_opacity: bk_opacity, chatlog: chatlog, chatlog_lines: chatlog_lines, color: color, extents: extents, extents_cx: extents_cx, extents_cy: extents_cy, file: file, read_from_file: read_from_file, font: font, gradient: gradient, gradient_color: gradient_color, gradient_dir: gradient_dir, gradient_opacity: gradient_opacity, outline: outline, outline_color: outline_color, outline_size: outline_size, outline_opacity: outline_opacity, text: text, valign: valign, vertical: vertical, render: render}))
  end
  # Sends <tt>GetTextFreetype2Properties</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#gettextfreetype2properties
  # @param source [String] <tt>source</tt> field
  # @return [Future<Responses::GetTextFreetype2Properties>]
  def get_text_freetype2_properties(source:)
    send_request(Requests::GetTextFreetype2Properties.new({source: source}))
  end
  # Sends <tt>SetTextFreetype2Properties</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#settextfreetype2properties
  # @param source [String] <tt>source</tt> field
  # @param color1 [Integer, nil] <tt>color1</tt> field
  # @param color2 [Integer, nil] <tt>color2</tt> field
  # @param custom_width [Integer, nil] <tt>custom_width</tt> field
  # @param drop_shadow [Boolean, nil] <tt>drop_shadow</tt> field
  # @param font [Hash, nil] <tt>font</tt> field
  # @param from_file [Boolean, nil] <tt>from_file</tt> field
  # @param log_mode [Boolean, nil] <tt>log_mode</tt> field
  # @param outline [Boolean, nil] <tt>outline</tt> field
  # @param text [String, nil] <tt>text</tt> field
  # @param text_file [String, nil] <tt>text_file</tt> field
  # @param word_wrap [Boolean, nil] <tt>word_wrap</tt> field
  # @return [Future<Responses::SetTextFreetype2Properties>]
  def set_text_freetype2_properties(source:, color1: nil, color2: nil, custom_width: nil, drop_shadow: nil, font: nil, from_file: nil, log_mode: nil, outline: nil, text: nil, text_file: nil, word_wrap: nil)
    send_request(Requests::SetTextFreetype2Properties.new({source: source, color1: color1, color2: color2, custom_width: custom_width, drop_shadow: drop_shadow, font: font, from_file: from_file, log_mode: log_mode, outline: outline, text: text, text_file: text_file, word_wrap: word_wrap}))
  end
  # Sends <tt>GetBrowserSourceProperties</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getbrowsersourceproperties
  # @param source [String] <tt>source</tt> field
  # @deprecated This type of request is deprecated.
  # @return [Future<Responses::GetBrowserSourceProperties>]
  def get_browser_source_properties(source:)
    send_request(Requests::GetBrowserSourceProperties.new({source: source}))
  end
  # Sends <tt>SetBrowserSourceProperties</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setbrowsersourceproperties
  # @param source [String] <tt>source</tt> field
  # @param is_local_file [Boolean, nil] <tt>is_local_file</tt> field
  # @param local_file [String, nil] <tt>local_file</tt> field
  # @param url [String, nil] <tt>url</tt> field
  # @param css [String, nil] <tt>css</tt> field
  # @param width [Integer, nil] <tt>width</tt> field
  # @param height [Integer, nil] <tt>height</tt> field
  # @param fps [Integer, nil] <tt>fps</tt> field
  # @param shutdown [Boolean, nil] <tt>shutdown</tt> field
  # @param render [Boolean, nil] <tt>render</tt> field
  # @deprecated This type of request is deprecated.
  # @return [Future<Responses::SetBrowserSourceProperties>]
  def set_browser_source_properties(source:, is_local_file: nil, local_file: nil, url: nil, css: nil, width: nil, height: nil, fps: nil, shutdown: nil, render: nil)
    send_request(Requests::SetBrowserSourceProperties.new({source: source, is_local_file: is_local_file, local_file: local_file, url: url, css: css, width: width, height: height, fps: fps, shutdown: shutdown, render: render}))
  end
  # Sends <tt>GetSpecialSources</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getspecialsources
  # @return [Future<Responses::GetSpecialSources>]
  def get_special_sources()
    send_request(Requests::GetSpecialSources.new({}))
  end
  # Sends <tt>GetSourceFilters</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getsourcefilters
  # @param source_name [String] <tt>sourceName</tt> field
  # @return [Future<Responses::GetSourceFilters>]
  def get_source_filters(source_name:)
    send_request(Requests::GetSourceFilters.new({source_name: source_name}))
  end
  # Sends <tt>GetSourceFilterInfo</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getsourcefilterinfo
  # @param source_name [String] <tt>sourceName</tt> field
  # @param filter_name [String] <tt>filterName</tt> field
  # @return [Future<Responses::GetSourceFilterInfo>]
  def get_source_filter_info(source_name:, filter_name:)
    send_request(Requests::GetSourceFilterInfo.new({source_name: source_name, filter_name: filter_name}))
  end
  # Sends <tt>AddFilterToSource</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#addfiltertosource
  # @param source_name [String] <tt>sourceName</tt> field
  # @param filter_name [String] <tt>filterName</tt> field
  # @param filter_type [String] <tt>filterType</tt> field
  # @param filter_settings [Hash] <tt>filterSettings</tt> field
  # @return [Future<Responses::AddFilterToSource>]
  def add_filter_to_source(source_name:, filter_name:, filter_type:, filter_settings:)
    send_request(Requests::AddFilterToSource.new({source_name: source_name, filter_name: filter_name, filter_type: filter_type, filter_settings: filter_settings}))
  end
  # Sends <tt>RemoveFilterFromSource</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#removefilterfromsource
  # @param source_name [String] <tt>sourceName</tt> field
  # @param filter_name [String] <tt>filterName</tt> field
  # @return [Future<Responses::RemoveFilterFromSource>]
  def remove_filter_from_source(source_name:, filter_name:)
    send_request(Requests::RemoveFilterFromSource.new({source_name: source_name, filter_name: filter_name}))
  end
  # Sends <tt>ReorderSourceFilter</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#reordersourcefilter
  # @param source_name [String] <tt>sourceName</tt> field
  # @param filter_name [String] <tt>filterName</tt> field
  # @param new_index [Integer] <tt>newIndex</tt> field
  # @return [Future<Responses::ReorderSourceFilter>]
  def reorder_source_filter(source_name:, filter_name:, new_index:)
    send_request(Requests::ReorderSourceFilter.new({source_name: source_name, filter_name: filter_name, new_index: new_index}))
  end
  # Sends <tt>MoveSourceFilter</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#movesourcefilter
  # @param source_name [String] <tt>sourceName</tt> field
  # @param filter_name [String] <tt>filterName</tt> field
  # @param movement_type [String] <tt>movementType</tt> field
  # @return [Future<Responses::MoveSourceFilter>]
  def move_source_filter(source_name:, filter_name:, movement_type:)
    send_request(Requests::MoveSourceFilter.new({source_name: source_name, filter_name: filter_name, movement_type: movement_type}))
  end
  # Sends <tt>SetSourceFilterSettings</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setsourcefiltersettings
  # @param source_name [String] <tt>sourceName</tt> field
  # @param filter_name [String] <tt>filterName</tt> field
  # @param filter_settings [Hash] <tt>filterSettings</tt> field
  # @return [Future<Responses::SetSourceFilterSettings>]
  def set_source_filter_settings(source_name:, filter_name:, filter_settings:)
    send_request(Requests::SetSourceFilterSettings.new({source_name: source_name, filter_name: filter_name, filter_settings: filter_settings}))
  end
  # Sends <tt>SetSourceFilterVisibility</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setsourcefiltervisibility
  # @param source_name [String] <tt>sourceName</tt> field
  # @param filter_name [String] <tt>filterName</tt> field
  # @param filter_enabled [Boolean] <tt>filterEnabled</tt> field
  # @return [Future<Responses::SetSourceFilterVisibility>]
  def set_source_filter_visibility(source_name:, filter_name:, filter_enabled:)
    send_request(Requests::SetSourceFilterVisibility.new({source_name: source_name, filter_name: filter_name, filter_enabled: filter_enabled}))
  end
  # Sends <tt>GetAudioMonitorType</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getaudiomonitortype
  # @param source_name [String] <tt>sourceName</tt> field
  # @return [Future<Responses::GetAudioMonitorType>]
  def get_audio_monitor_type(source_name:)
    send_request(Requests::GetAudioMonitorType.new({source_name: source_name}))
  end
  # Sends <tt>SetAudioMonitorType</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setaudiomonitortype
  # @param source_name [String] <tt>sourceName</tt> field
  # @param monitor_type [String] <tt>monitorType</tt> field
  # @return [Future<Responses::SetAudioMonitorType>]
  def set_audio_monitor_type(source_name:, monitor_type:)
    send_request(Requests::SetAudioMonitorType.new({source_name: source_name, monitor_type: monitor_type}))
  end
  # Sends <tt>GetSourceDefaultSettings</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getsourcedefaultsettings
  # @param source_kind [String] <tt>sourceKind</tt> field
  # @return [Future<Responses::GetSourceDefaultSettings>]
  def get_source_default_settings(source_kind:)
    send_request(Requests::GetSourceDefaultSettings.new({source_kind: source_kind}))
  end
  # Sends <tt>TakeSourceScreenshot</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#takesourcescreenshot
  # @param source_name [String, nil] <tt>sourceName</tt> field
  # @param embed_picture_format [String, nil] <tt>embedPictureFormat</tt> field
  # @param save_to_file_path [String, nil] <tt>saveToFilePath</tt> field
  # @param file_format [String, nil] <tt>fileFormat</tt> field
  # @param compression_quality [Integer, nil] <tt>compressionQuality</tt> field
  # @param width [Integer, nil] <tt>width</tt> field
  # @param height [Integer, nil] <tt>height</tt> field
  # @return [Future<Responses::TakeSourceScreenshot>]
  def take_source_screenshot(source_name: nil, embed_picture_format: nil, save_to_file_path: nil, file_format: nil, compression_quality: nil, width: nil, height: nil)
    send_request(Requests::TakeSourceScreenshot.new({source_name: source_name, embed_picture_format: embed_picture_format, save_to_file_path: save_to_file_path, file_format: file_format, compression_quality: compression_quality, width: width, height: height}))
  end
  # Sends <tt>RefreshBrowserSource</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#refreshbrowsersource
  # @param source_name [String] <tt>sourceName</tt> field
  # @return [Future<Responses::RefreshBrowserSource>]
  def refresh_browser_source(source_name:)
    send_request(Requests::RefreshBrowserSource.new({source_name: source_name}))
  end
  # Sends <tt>ListOutputs</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#listoutputs
  # @return [Future<Responses::ListOutputs>]
  def list_outputs()
    send_request(Requests::ListOutputs.new({}))
  end
  # Sends <tt>GetOutputInfo</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getoutputinfo
  # @param output_name [String] <tt>outputName</tt> field
  # @return [Future<Responses::GetOutputInfo>]
  def get_output_info(output_name:)
    send_request(Requests::GetOutputInfo.new({output_name: output_name}))
  end
  # Sends <tt>StartOutput</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#startoutput
  # @param output_name [String] <tt>outputName</tt> field
  # @return [Future<Responses::StartOutput>]
  def start_output(output_name:)
    send_request(Requests::StartOutput.new({output_name: output_name}))
  end
  # Sends <tt>StopOutput</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#stopoutput
  # @param output_name [String] <tt>outputName</tt> field
  # @param force [Boolean, nil] <tt>force</tt> field
  # @return [Future<Responses::StopOutput>]
  def stop_output(output_name:, force: nil)
    send_request(Requests::StopOutput.new({output_name: output_name, force: force}))
  end
  # Sends <tt>SetCurrentProfile</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setcurrentprofile
  # @param profile_name [String] <tt>profile-name</tt> field
  # @return [Future<Responses::SetCurrentProfile>]
  def set_current_profile(profile_name:)
    send_request(Requests::SetCurrentProfile.new({profile_name: profile_name}))
  end
  # Sends <tt>GetCurrentProfile</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getcurrentprofile
  # @return [Future<Responses::GetCurrentProfile>]
  def get_current_profile()
    send_request(Requests::GetCurrentProfile.new({}))
  end
  # Sends <tt>ListProfiles</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#listprofiles
  # @return [Future<Responses::ListProfiles>]
  def list_profiles()
    send_request(Requests::ListProfiles.new({}))
  end
  # Sends <tt>GetRecordingStatus</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getrecordingstatus
  # @return [Future<Responses::GetRecordingStatus>]
  def get_recording_status()
    send_request(Requests::GetRecordingStatus.new({}))
  end
  # Sends <tt>StartStopRecording</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#startstoprecording
  # @return [Future<Responses::StartStopRecording>]
  def start_stop_recording()
    send_request(Requests::StartStopRecording.new({}))
  end
  # Sends <tt>StartRecording</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#startrecording
  # @return [Future<Responses::StartRecording>]
  def start_recording()
    send_request(Requests::StartRecording.new({}))
  end
  # Sends <tt>StopRecording</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#stoprecording
  # @return [Future<Responses::StopRecording>]
  def stop_recording()
    send_request(Requests::StopRecording.new({}))
  end
  # Sends <tt>PauseRecording</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#pauserecording
  # @return [Future<Responses::PauseRecording>]
  def pause_recording()
    send_request(Requests::PauseRecording.new({}))
  end
  # Sends <tt>ResumeRecording</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#resumerecording
  # @return [Future<Responses::ResumeRecording>]
  def resume_recording()
    send_request(Requests::ResumeRecording.new({}))
  end
  # Sends <tt>SetRecordingFolder</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setrecordingfolder
  # @param rec_folder [String] <tt>rec-folder</tt> field
  # @return [Future<Responses::SetRecordingFolder>]
  def set_recording_folder(rec_folder:)
    send_request(Requests::SetRecordingFolder.new({rec_folder: rec_folder}))
  end
  # Sends <tt>GetRecordingFolder</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getrecordingfolder
  # @return [Future<Responses::GetRecordingFolder>]
  def get_recording_folder()
    send_request(Requests::GetRecordingFolder.new({}))
  end
  # Sends <tt>GetReplayBufferStatus</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getreplaybufferstatus
  # @return [Future<Responses::GetReplayBufferStatus>]
  def get_replay_buffer_status()
    send_request(Requests::GetReplayBufferStatus.new({}))
  end
  # Sends <tt>StartStopReplayBuffer</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#startstopreplaybuffer
  # @return [Future<Responses::StartStopReplayBuffer>]
  def start_stop_replay_buffer()
    send_request(Requests::StartStopReplayBuffer.new({}))
  end
  # Sends <tt>StartReplayBuffer</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#startreplaybuffer
  # @return [Future<Responses::StartReplayBuffer>]
  def start_replay_buffer()
    send_request(Requests::StartReplayBuffer.new({}))
  end
  # Sends <tt>StopReplayBuffer</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#stopreplaybuffer
  # @return [Future<Responses::StopReplayBuffer>]
  def stop_replay_buffer()
    send_request(Requests::StopReplayBuffer.new({}))
  end
  # Sends <tt>SaveReplayBuffer</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#savereplaybuffer
  # @return [Future<Responses::SaveReplayBuffer>]
  def save_replay_buffer()
    send_request(Requests::SaveReplayBuffer.new({}))
  end
  # Sends <tt>SetCurrentSceneCollection</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setcurrentscenecollection
  # @param sc_name [String] <tt>sc-name</tt> field
  # @return [Future<Responses::SetCurrentSceneCollection>]
  def set_current_scene_collection(sc_name:)
    send_request(Requests::SetCurrentSceneCollection.new({sc_name: sc_name}))
  end
  # Sends <tt>GetCurrentSceneCollection</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getcurrentscenecollection
  # @return [Future<Responses::GetCurrentSceneCollection>]
  def get_current_scene_collection()
    send_request(Requests::GetCurrentSceneCollection.new({}))
  end
  # Sends <tt>ListSceneCollections</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#listscenecollections
  # @return [Future<Responses::ListSceneCollections>]
  def list_scene_collections()
    send_request(Requests::ListSceneCollections.new({}))
  end
  # Sends <tt>GetSceneItemList</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getsceneitemlist
  # @param scene_name [String, nil] <tt>sceneName</tt> field
  # @return [Future<Responses::GetSceneItemList>]
  def get_scene_item_list(scene_name: nil)
    send_request(Requests::GetSceneItemList.new({scene_name: scene_name}))
  end
  # Sends <tt>GetSceneItemProperties</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getsceneitemproperties
  # @param scene_name [String, nil] <tt>scene-name</tt> field
  # @param item [String, Object] <tt>item</tt> field
  # @return [Future<Responses::GetSceneItemProperties>]
  def get_scene_item_properties(scene_name: nil, item:)
    send_request(Requests::GetSceneItemProperties.new({scene_name: scene_name, item: item}))
  end
  # Sends <tt>SetSceneItemProperties</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setsceneitemproperties
  # @param scene_name [String, nil] <tt>scene-name</tt> field
  # @param item [String, Object] <tt>item</tt> field
  # @param position [Hash] <tt>position</tt> field
  # @param rotation [Float, nil] <tt>rotation</tt> field
  # @param scale [Hash] <tt>scale</tt> field
  # @param crop [Hash] <tt>crop</tt> field
  # @param visible [Boolean, nil] <tt>visible</tt> field
  # @param locked [Boolean, nil] <tt>locked</tt> field
  # @param bounds [Hash] <tt>bounds</tt> field
  # @return [Future<Responses::SetSceneItemProperties>]
  def set_scene_item_properties(scene_name: nil, item:, position:, rotation: nil, scale:, crop:, visible: nil, locked: nil, bounds:)
    send_request(Requests::SetSceneItemProperties.new({scene_name: scene_name, item: item, position: position, rotation: rotation, scale: scale, crop: crop, visible: visible, locked: locked, bounds: bounds}))
  end
  # Sends <tt>ResetSceneItem</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#resetsceneitem
  # @param scene_name [String, nil] <tt>scene-name</tt> field
  # @param item [String, Object] <tt>item</tt> field
  # @return [Future<Responses::ResetSceneItem>]
  def reset_scene_item(scene_name: nil, item:)
    send_request(Requests::ResetSceneItem.new({scene_name: scene_name, item: item}))
  end
  # Sends <tt>SetSceneItemRender</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setsceneitemrender
  # @param scene_name [String, nil] <tt>scene-name</tt> field
  # @param source [String, nil] <tt>source</tt> field
  # @param item [Integer, nil] <tt>item</tt> field
  # @param render [Boolean] <tt>render</tt> field
  # @return [Future<Responses::SetSceneItemRender>]
  def set_scene_item_render(scene_name: nil, source: nil, item: nil, render:)
    send_request(Requests::SetSceneItemRender.new({scene_name: scene_name, source: source, item: item, render: render}))
  end
  # Sends <tt>SetSceneItemPosition</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setsceneitemposition
  # @param scene_name [String, nil] <tt>scene-name</tt> field
  # @param item [String] <tt>item</tt> field
  # @param x [Float] <tt>x</tt> field
  # @param y [Float] <tt>y</tt> field
  # @deprecated This type of request is deprecated.
  # @return [Future<Responses::SetSceneItemPosition>]
  def set_scene_item_position(scene_name: nil, item:, x:, y:)
    send_request(Requests::SetSceneItemPosition.new({scene_name: scene_name, item: item, x: x, y: y}))
  end
  # Sends <tt>SetSceneItemTransform</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setsceneitemtransform
  # @param scene_name [String, nil] <tt>scene-name</tt> field
  # @param item [String] <tt>item</tt> field
  # @param x_scale [Float] <tt>x-scale</tt> field
  # @param y_scale [Float] <tt>y-scale</tt> field
  # @param rotation [Float] <tt>rotation</tt> field
  # @deprecated This type of request is deprecated.
  # @return [Future<Responses::SetSceneItemTransform>]
  def set_scene_item_transform(scene_name: nil, item:, x_scale:, y_scale:, rotation:)
    send_request(Requests::SetSceneItemTransform.new({scene_name: scene_name, item: item, x_scale: x_scale, y_scale: y_scale, rotation: rotation}))
  end
  # Sends <tt>SetSceneItemCrop</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setsceneitemcrop
  # @param scene_name [String, nil] <tt>scene-name</tt> field
  # @param item [String] <tt>item</tt> field
  # @param top [Integer] <tt>top</tt> field
  # @param bottom [Integer] <tt>bottom</tt> field
  # @param left [Integer] <tt>left</tt> field
  # @param right [Integer] <tt>right</tt> field
  # @deprecated This type of request is deprecated.
  # @return [Future<Responses::SetSceneItemCrop>]
  def set_scene_item_crop(scene_name: nil, item:, top:, bottom:, left:, right:)
    send_request(Requests::SetSceneItemCrop.new({scene_name: scene_name, item: item, top: top, bottom: bottom, left: left, right: right}))
  end
  # Sends <tt>DeleteSceneItem</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#deletesceneitem
  # @param scene [String, nil] <tt>scene</tt> field
  # @param item [Hash] <tt>item</tt> field
  # @return [Future<Responses::DeleteSceneItem>]
  def delete_scene_item(scene: nil, item:)
    send_request(Requests::DeleteSceneItem.new({scene: scene, item: item}))
  end
  # Sends <tt>AddSceneItem</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#addsceneitem
  # @param scene_name [String] <tt>sceneName</tt> field
  # @param source_name [String] <tt>sourceName</tt> field
  # @param set_visible [Boolean, nil] <tt>setVisible</tt> field
  # @return [Future<Responses::AddSceneItem>]
  def add_scene_item(scene_name:, source_name:, set_visible: nil)
    send_request(Requests::AddSceneItem.new({scene_name: scene_name, source_name: source_name, set_visible: set_visible}))
  end
  # Sends <tt>DuplicateSceneItem</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#duplicatesceneitem
  # @param from_scene [String, nil] <tt>fromScene</tt> field
  # @param to_scene [String, nil] <tt>toScene</tt> field
  # @param item [Hash] <tt>item</tt> field
  # @return [Future<Responses::DuplicateSceneItem>]
  def duplicate_scene_item(from_scene: nil, to_scene: nil, item:)
    send_request(Requests::DuplicateSceneItem.new({from_scene: from_scene, to_scene: to_scene, item: item}))
  end
  # Sends <tt>SetCurrentScene</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setcurrentscene
  # @param scene_name [String] <tt>scene-name</tt> field
  # @return [Future<Responses::SetCurrentScene>]
  def set_current_scene(scene_name:)
    send_request(Requests::SetCurrentScene.new({scene_name: scene_name}))
  end
  # Sends <tt>GetCurrentScene</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getcurrentscene
  # @return [Future<Responses::GetCurrentScene>]
  def get_current_scene()
    send_request(Requests::GetCurrentScene.new({}))
  end
  # Sends <tt>GetSceneList</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getscenelist
  # @return [Future<Responses::GetSceneList>]
  def get_scene_list()
    send_request(Requests::GetSceneList.new({}))
  end
  # Sends <tt>CreateScene</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#createscene
  # @param scene_name [String] <tt>sceneName</tt> field
  # @return [Future<Responses::CreateScene>]
  def create_scene(scene_name:)
    send_request(Requests::CreateScene.new({scene_name: scene_name}))
  end
  # Sends <tt>ReorderSceneItems</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#reordersceneitems
  # @param scene [String, nil] <tt>scene</tt> field
  # @param items [Array<Hash>] <tt>items</tt> field
  # @return [Future<Responses::ReorderSceneItems>]
  def reorder_scene_items(scene: nil, items:)
    send_request(Requests::ReorderSceneItems.new({scene: scene, items: items}))
  end
  # Sends <tt>SetSceneTransitionOverride</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setscenetransitionoverride
  # @param scene_name [String] <tt>sceneName</tt> field
  # @param transition_name [String] <tt>transitionName</tt> field
  # @param transition_duration [Integer, nil] <tt>transitionDuration</tt> field
  # @return [Future<Responses::SetSceneTransitionOverride>]
  def set_scene_transition_override(scene_name:, transition_name:, transition_duration: nil)
    send_request(Requests::SetSceneTransitionOverride.new({scene_name: scene_name, transition_name: transition_name, transition_duration: transition_duration}))
  end
  # Sends <tt>RemoveSceneTransitionOverride</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#removescenetransitionoverride
  # @param scene_name [String] <tt>sceneName</tt> field
  # @return [Future<Responses::RemoveSceneTransitionOverride>]
  def remove_scene_transition_override(scene_name:)
    send_request(Requests::RemoveSceneTransitionOverride.new({scene_name: scene_name}))
  end
  # Sends <tt>GetSceneTransitionOverride</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getscenetransitionoverride
  # @param scene_name [String] <tt>sceneName</tt> field
  # @return [Future<Responses::GetSceneTransitionOverride>]
  def get_scene_transition_override(scene_name:)
    send_request(Requests::GetSceneTransitionOverride.new({scene_name: scene_name}))
  end
  # Sends <tt>GetStreamingStatus</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getstreamingstatus
  # @return [Future<Responses::GetStreamingStatus>]
  def get_streaming_status()
    send_request(Requests::GetStreamingStatus.new({}))
  end
  # Sends <tt>StartStopStreaming</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#startstopstreaming
  # @return [Future<Responses::StartStopStreaming>]
  def start_stop_streaming()
    send_request(Requests::StartStopStreaming.new({}))
  end
  # Sends <tt>StartStreaming</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#startstreaming
  # @param stream [Hash, nil] <tt>stream</tt> field
  # @return [Future<Responses::StartStreaming>]
  def start_streaming(stream: nil)
    send_request(Requests::StartStreaming.new({stream: stream}))
  end
  # Sends <tt>StopStreaming</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#stopstreaming
  # @return [Future<Responses::StopStreaming>]
  def stop_streaming()
    send_request(Requests::StopStreaming.new({}))
  end
  # Sends <tt>SetStreamSettings</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setstreamsettings
  # @param type [String] <tt>type</tt> field
  # @param settings [Hash] <tt>settings</tt> field
  # @param save [Boolean] <tt>save</tt> field
  # @return [Future<Responses::SetStreamSettings>]
  def set_stream_settings(type:, settings:, save:)
    send_request(Requests::SetStreamSettings.new({type: type, settings: settings, save: save}))
  end
  # Sends <tt>GetStreamSettings</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getstreamsettings
  # @return [Future<Responses::GetStreamSettings>]
  def get_stream_settings()
    send_request(Requests::GetStreamSettings.new({}))
  end
  # Sends <tt>SaveStreamSettings</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#savestreamsettings
  # @return [Future<Responses::SaveStreamSettings>]
  def save_stream_settings()
    send_request(Requests::SaveStreamSettings.new({}))
  end
  # Sends <tt>SendCaptions</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#sendcaptions
  # @param text [String] <tt>text</tt> field
  # @return [Future<Responses::SendCaptions>]
  def send_captions(text:)
    send_request(Requests::SendCaptions.new({text: text}))
  end
  # Sends <tt>GetStudioModeStatus</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getstudiomodestatus
  # @return [Future<Responses::GetStudioModeStatus>]
  def get_studio_mode_status()
    send_request(Requests::GetStudioModeStatus.new({}))
  end
  # Sends <tt>GetPreviewScene</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getpreviewscene
  # @return [Future<Responses::GetPreviewScene>]
  def get_preview_scene()
    send_request(Requests::GetPreviewScene.new({}))
  end
  # Sends <tt>SetPreviewScene</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setpreviewscene
  # @param scene_name [String] <tt>scene-name</tt> field
  # @return [Future<Responses::SetPreviewScene>]
  def set_preview_scene(scene_name:)
    send_request(Requests::SetPreviewScene.new({scene_name: scene_name}))
  end
  # Sends <tt>TransitionToProgram</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#transitiontoprogram
  # @param with_transition [Hash, nil] <tt>with-transition</tt> field
  # @return [Future<Responses::TransitionToProgram>]
  def transition_to_program(with_transition: nil)
    send_request(Requests::TransitionToProgram.new({with_transition: with_transition}))
  end
  # Sends <tt>EnableStudioMode</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#enablestudiomode
  # @return [Future<Responses::EnableStudioMode>]
  def enable_studio_mode()
    send_request(Requests::EnableStudioMode.new({}))
  end
  # Sends <tt>DisableStudioMode</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#disablestudiomode
  # @return [Future<Responses::DisableStudioMode>]
  def disable_studio_mode()
    send_request(Requests::DisableStudioMode.new({}))
  end
  # Sends <tt>ToggleStudioMode</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#togglestudiomode
  # @return [Future<Responses::ToggleStudioMode>]
  def toggle_studio_mode()
    send_request(Requests::ToggleStudioMode.new({}))
  end
  # Sends <tt>GetTransitionList</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#gettransitionlist
  # @return [Future<Responses::GetTransitionList>]
  def get_transition_list()
    send_request(Requests::GetTransitionList.new({}))
  end
  # Sends <tt>GetCurrentTransition</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getcurrenttransition
  # @return [Future<Responses::GetCurrentTransition>]
  def get_current_transition()
    send_request(Requests::GetCurrentTransition.new({}))
  end
  # Sends <tt>SetCurrentTransition</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setcurrenttransition
  # @param transition_name [String] <tt>transition-name</tt> field
  # @return [Future<Responses::SetCurrentTransition>]
  def set_current_transition(transition_name:)
    send_request(Requests::SetCurrentTransition.new({transition_name: transition_name}))
  end
  # Sends <tt>SetTransitionDuration</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#settransitionduration
  # @param duration [Integer] <tt>duration</tt> field
  # @return [Future<Responses::SetTransitionDuration>]
  def set_transition_duration(duration:)
    send_request(Requests::SetTransitionDuration.new({duration: duration}))
  end
  # Sends <tt>GetTransitionDuration</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#gettransitionduration
  # @return [Future<Responses::GetTransitionDuration>]
  def get_transition_duration()
    send_request(Requests::GetTransitionDuration.new({}))
  end
  # Sends <tt>GetTransitionPosition</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#gettransitionposition
  # @return [Future<Responses::GetTransitionPosition>]
  def get_transition_position()
    send_request(Requests::GetTransitionPosition.new({}))
  end
  # Sends <tt>GetTransitionSettings</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#gettransitionsettings
  # @param transition_name [String] <tt>transitionName</tt> field
  # @return [Future<Responses::GetTransitionSettings>]
  def get_transition_settings(transition_name:)
    send_request(Requests::GetTransitionSettings.new({transition_name: transition_name}))
  end
  # Sends <tt>SetTransitionSettings</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#settransitionsettings
  # @param transition_name [String] <tt>transitionName</tt> field
  # @param transition_settings [Hash] <tt>transitionSettings</tt> field
  # @return [Future<Responses::SetTransitionSettings>]
  def set_transition_settings(transition_name:, transition_settings:)
    send_request(Requests::SetTransitionSettings.new({transition_name: transition_name, transition_settings: transition_settings}))
  end
  # Sends <tt>ReleaseTBar</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#releasetbar
  # @return [Future<Responses::ReleaseTBar>]
  def release_t_bar()
    send_request(Requests::ReleaseTBar.new({}))
  end
  # Sends <tt>SetTBarPosition</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#settbarposition
  # @param position [Float] <tt>position</tt> field
  # @param release [Boolean, nil] <tt>release</tt> field
  # @return [Future<Responses::SetTBarPosition>]
  def set_t_bar_position(position:, release: nil)
    send_request(Requests::SetTBarPosition.new({position: position, release: release}))
  end
  # Sends <tt>GetVirtualCamStatus</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getvirtualcamstatus
  # @return [Future<Responses::GetVirtualCamStatus>]
  def get_virtual_cam_status()
    send_request(Requests::GetVirtualCamStatus.new({}))
  end
  # Sends <tt>StartStopVirtualCam</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#startstopvirtualcam
  # @return [Future<Responses::StartStopVirtualCam>]
  def start_stop_virtual_cam()
    send_request(Requests::StartStopVirtualCam.new({}))
  end
  # Sends <tt>StartVirtualCam</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#startvirtualcam
  # @return [Future<Responses::StartVirtualCam>]
  def start_virtual_cam()
    send_request(Requests::StartVirtualCam.new({}))
  end
  # Sends <tt>StopVirtualCam</tt> request.
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#stopvirtualcam
  # @return [Future<Responses::StopVirtualCam>]
  def stop_virtual_cam()
    send_request(Requests::StopVirtualCam.new({}))
  end
end  # module Request::Mixin
end  # module Requests
module Responses
  # @see Requests::GetVersion
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getversion
  class GetVersion < Response
    # @!attribute [r] version
    # @return [Float] <tt>version</tt> field
    def version; get_field("version", Types::Float); end
    # @!attribute [r] obs_websocket_version
    # @return [String] <tt>obs-websocket-version</tt> field
    def obs_websocket_version; get_field("obs-websocket-version", Types::String); end
    # @!attribute [r] obs_studio_version
    # @return [String] <tt>obs-studio-version</tt> field
    def obs_studio_version; get_field("obs-studio-version", Types::String); end
    # @!attribute [r] available_requests
    # @return [String] <tt>available-requests</tt> field
    def available_requests; get_field("available-requests", Types::String); end
    # @!attribute [r] supported_image_export_formats
    # @return [String] <tt>supported-image-export-formats</tt> field
    def supported_image_export_formats; get_field("supported-image-export-formats", Types::String); end
    Requests::GetVersion::Response = self
  end
  # @see Requests::GetAuthRequired
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getauthrequired
  class GetAuthRequired < Response
    # @!attribute [r] auth_required
    # @return [Boolean] <tt>authRequired</tt> field
    def auth_required; get_field("authRequired", Types::Boolean); end
    # @!attribute [r] challenge
    # @return [String, nil] <tt>challenge</tt> field
    def challenge; get_field("challenge", Types::Optional[Types::String]); end
    # @!attribute [r] salt
    # @return [String, nil] <tt>salt</tt> field
    def salt; get_field("salt", Types::Optional[Types::String]); end
    Requests::GetAuthRequired::Response = self
  end
  # @see Requests::Authenticate
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#authenticate
  class Authenticate < Response
    Requests::Authenticate::Response = self
  end
  # @see Requests::SetHeartbeat
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setheartbeat
  class SetHeartbeat < Response
    Requests::SetHeartbeat::Response = self
  end
  # @see Requests::SetFilenameFormatting
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setfilenameformatting
  class SetFilenameFormatting < Response
    Requests::SetFilenameFormatting::Response = self
  end
  # @see Requests::GetFilenameFormatting
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getfilenameformatting
  class GetFilenameFormatting < Response
    # @!attribute [r] filename_formatting
    # @return [String] <tt>filename-formatting</tt> field
    def filename_formatting; get_field("filename-formatting", Types::String); end
    Requests::GetFilenameFormatting::Response = self
  end
  # @see Requests::GetStats
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getstats
  class GetStats < Response
    # @!attribute [r] stats
    # @return [OBSStats] <tt>stats</tt> field
    def stats; get_field("stats", Types::OBSStats); end
    Requests::GetStats::Response = self
  end
  # @see Requests::BroadcastCustomMessage
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#broadcastcustommessage
  class BroadcastCustomMessage < Response
    Requests::BroadcastCustomMessage::Response = self
  end
  # @see Requests::GetVideoInfo
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getvideoinfo
  class GetVideoInfo < Response
    # @!attribute [r] base_width
    # @return [Integer] <tt>baseWidth</tt> field
    def base_width; get_field("baseWidth", Types::Integer); end
    # @!attribute [r] base_height
    # @return [Integer] <tt>baseHeight</tt> field
    def base_height; get_field("baseHeight", Types::Integer); end
    # @!attribute [r] output_width
    # @return [Integer] <tt>outputWidth</tt> field
    def output_width; get_field("outputWidth", Types::Integer); end
    # @!attribute [r] output_height
    # @return [Integer] <tt>outputHeight</tt> field
    def output_height; get_field("outputHeight", Types::Integer); end
    # @!attribute [r] scale_type
    # @return [String] <tt>scaleType</tt> field
    def scale_type; get_field("scaleType", Types::String); end
    # @!attribute [r] fps
    # @return [Float] <tt>fps</tt> field
    def fps; get_field("fps", Types::Float); end
    # @!attribute [r] video_format
    # @return [String] <tt>videoFormat</tt> field
    def video_format; get_field("videoFormat", Types::String); end
    # @!attribute [r] color_space
    # @return [String] <tt>colorSpace</tt> field
    def color_space; get_field("colorSpace", Types::String); end
    # @!attribute [r] color_range
    # @return [String] <tt>colorRange</tt> field
    def color_range; get_field("colorRange", Types::String); end
    Requests::GetVideoInfo::Response = self
  end
  # @see Requests::OpenProjector
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#openprojector
  class OpenProjector < Response
    Requests::OpenProjector::Response = self
  end
  # @see Requests::TriggerHotkeyByName
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#triggerhotkeybyname
  class TriggerHotkeyByName < Response
    Requests::TriggerHotkeyByName::Response = self
  end
  # @see Requests::TriggerHotkeyBySequence
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#triggerhotkeybysequence
  class TriggerHotkeyBySequence < Response
    Requests::TriggerHotkeyBySequence::Response = self
  end
  # @see Requests::ExecuteBatch
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#executebatch
  class ExecuteBatch < Response
    # @!attribute [r] results
    # @return [Array<Hash>] <tt>results</tt> field
    def results; get_field("results", Types::Array[Types::Object[{:message_id=>{:type=>Types::String, :json_name=>"message-id"}, :status=>{:type=>Types::String, :json_name=>"status"}, :error=>{:type=>Types::Optional[Types::String], :json_name=>"error"}}]]); end
    Requests::ExecuteBatch::Response = self
  end
  # @see Requests::Sleep
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#sleep
  class Sleep < Response
    Requests::Sleep::Response = self
  end
  # @see Requests::PlayPauseMedia
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#playpausemedia
  class PlayPauseMedia < Response
    Requests::PlayPauseMedia::Response = self
  end
  # @see Requests::RestartMedia
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#restartmedia
  class RestartMedia < Response
    Requests::RestartMedia::Response = self
  end
  # @see Requests::StopMedia
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#stopmedia
  class StopMedia < Response
    Requests::StopMedia::Response = self
  end
  # @see Requests::NextMedia
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#nextmedia
  class NextMedia < Response
    Requests::NextMedia::Response = self
  end
  # @see Requests::PreviousMedia
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#previousmedia
  class PreviousMedia < Response
    Requests::PreviousMedia::Response = self
  end
  # @see Requests::GetMediaDuration
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getmediaduration
  class GetMediaDuration < Response
    # @!attribute [r] media_duration
    # @return [Integer] <tt>mediaDuration</tt> field
    def media_duration; get_field("mediaDuration", Types::Integer); end
    Requests::GetMediaDuration::Response = self
  end
  # @see Requests::GetMediaTime
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getmediatime
  class GetMediaTime < Response
    # @!attribute [r] timestamp
    # @return [Integer] <tt>timestamp</tt> field
    def timestamp; get_field("timestamp", Types::Integer); end
    Requests::GetMediaTime::Response = self
  end
  # @see Requests::SetMediaTime
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setmediatime
  class SetMediaTime < Response
    Requests::SetMediaTime::Response = self
  end
  # @see Requests::ScrubMedia
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#scrubmedia
  class ScrubMedia < Response
    Requests::ScrubMedia::Response = self
  end
  # @see Requests::GetMediaState
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getmediastate
  class GetMediaState < Response
    # @!attribute [r] media_state
    # @return [String] <tt>mediaState</tt> field
    def media_state; get_field("mediaState", Types::String); end
    Requests::GetMediaState::Response = self
  end
  # @see Requests::GetMediaSourcesList
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getmediasourceslist
  class GetMediaSourcesList < Response
    # @!attribute [r] media_sources
    # @return [Array<Hash>] <tt>mediaSources</tt> field
    def media_sources; get_field("mediaSources", Types::Array[Types::Object[{:source_name=>{:type=>Types::String, :json_name=>"sourceName"}, :source_kind=>{:type=>Types::String, :json_name=>"sourceKind"}, :media_state=>{:type=>Types::String, :json_name=>"mediaState"}}]]); end
    Requests::GetMediaSourcesList::Response = self
  end
  # @see Requests::CreateSource
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#createsource
  class CreateSource < Response
    # @!attribute [r] item_id
    # @return [Integer] <tt>itemId</tt> field
    def item_id; get_field("itemId", Types::Integer); end
    Requests::CreateSource::Response = self
  end
  # @see Requests::GetSourcesList
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getsourceslist
  class GetSourcesList < Response
    # @!attribute [r] sources
    # @return [Array<Hash>] <tt>sources</tt> field
    def sources; get_field("sources", Types::Array[Types::Object[{:name=>{:type=>Types::String, :json_name=>"name"}, :type_id=>{:type=>Types::String, :json_name=>"typeId"}, :type=>{:type=>Types::String, :json_name=>"type"}}]]); end
    Requests::GetSourcesList::Response = self
  end
  # @see Requests::GetSourceTypesList
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getsourcetypeslist
  class GetSourceTypesList < Response
    # @!attribute [r] types
    # @return [Array<Hash>] <tt>types</tt> field
    def types; get_field("types", Types::Array[Types::Object[{:type_id=>{:type=>Types::String, :json_name=>"typeId"}, :display_name=>{:type=>Types::String, :json_name=>"displayName"}, :type=>{:type=>Types::String, :json_name=>"type"}, :default_settings=>{:type=>Types::Object, :json_name=>"defaultSettings"}, :caps=>{:type=>Types::Object[{:is_async=>{:type=>Types::Boolean, :json_name=>"caps"}, :has_video=>{:type=>Types::Boolean, :json_name=>"caps"}, :has_audio=>{:type=>Types::Boolean, :json_name=>"caps"}, :can_interact=>{:type=>Types::Boolean, :json_name=>"caps"}, :is_composite=>{:type=>Types::Boolean, :json_name=>"caps"}, :do_not_duplicate=>{:type=>Types::Boolean, :json_name=>"caps"}, :do_not_self_monitor=>{:type=>Types::Boolean, :json_name=>"caps"}}], :json_name=>"caps"}}]]); end
    Requests::GetSourceTypesList::Response = self
  end
  # @see Requests::GetVolume
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getvolume
  class GetVolume < Response
    # @!attribute [r] name
    # @return [String] <tt>name</tt> field
    def name; get_field("name", Types::String); end
    # @!attribute [r] volume
    # @return [Float] <tt>volume</tt> field
    def volume; get_field("volume", Types::Float); end
    # @!attribute [r] muted
    # @return [Boolean] <tt>muted</tt> field
    def muted; get_field("muted", Types::Boolean); end
    Requests::GetVolume::Response = self
  end
  # @see Requests::SetVolume
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setvolume
  class SetVolume < Response
    Requests::SetVolume::Response = self
  end
  # @see Requests::SetTracks
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#settracks
  class SetTracks < Response
    Requests::SetTracks::Response = self
  end
  # @see Requests::GetTracks
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#gettracks
  class GetTracks < Response
    # @!attribute [r] track1
    # @return [Boolean] <tt>track1</tt> field
    def track1; get_field("track1", Types::Boolean); end
    # @!attribute [r] track2
    # @return [Boolean] <tt>track2</tt> field
    def track2; get_field("track2", Types::Boolean); end
    # @!attribute [r] track3
    # @return [Boolean] <tt>track3</tt> field
    def track3; get_field("track3", Types::Boolean); end
    # @!attribute [r] track4
    # @return [Boolean] <tt>track4</tt> field
    def track4; get_field("track4", Types::Boolean); end
    # @!attribute [r] track5
    # @return [Boolean] <tt>track5</tt> field
    def track5; get_field("track5", Types::Boolean); end
    # @!attribute [r] track6
    # @return [Boolean] <tt>track6</tt> field
    def track6; get_field("track6", Types::Boolean); end
    Requests::GetTracks::Response = self
  end
  # @see Requests::GetMute
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getmute
  class GetMute < Response
    # @!attribute [r] name
    # @return [String] <tt>name</tt> field
    def name; get_field("name", Types::String); end
    # @!attribute [r] muted
    # @return [Boolean] <tt>muted</tt> field
    def muted; get_field("muted", Types::Boolean); end
    Requests::GetMute::Response = self
  end
  # @see Requests::SetMute
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setmute
  class SetMute < Response
    Requests::SetMute::Response = self
  end
  # @see Requests::ToggleMute
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#togglemute
  class ToggleMute < Response
    Requests::ToggleMute::Response = self
  end
  # @see Requests::GetSourceActive
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getsourceactive
  class GetSourceActive < Response
    # @!attribute [r] source_active
    # @return [Boolean] <tt>sourceActive</tt> field
    def source_active; get_field("sourceActive", Types::Boolean); end
    Requests::GetSourceActive::Response = self
  end
  # @see Requests::GetAudioActive
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getaudioactive
  class GetAudioActive < Response
    # @!attribute [r] audio_active
    # @return [Boolean] <tt>audioActive</tt> field
    def audio_active; get_field("audioActive", Types::Boolean); end
    Requests::GetAudioActive::Response = self
  end
  # @see Requests::SetSourceName
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setsourcename
  class SetSourceName < Response
    Requests::SetSourceName::Response = self
  end
  # @see Requests::SetSyncOffset
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setsyncoffset
  class SetSyncOffset < Response
    Requests::SetSyncOffset::Response = self
  end
  # @see Requests::GetSyncOffset
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getsyncoffset
  class GetSyncOffset < Response
    # @!attribute [r] name
    # @return [String] <tt>name</tt> field
    def name; get_field("name", Types::String); end
    # @!attribute [r] offset
    # @return [Integer] <tt>offset</tt> field
    def offset; get_field("offset", Types::Integer); end
    Requests::GetSyncOffset::Response = self
  end
  # @see Requests::GetSourceSettings
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getsourcesettings
  class GetSourceSettings < Response
    # @!attribute [r] source_name
    # @return [String] <tt>sourceName</tt> field
    def source_name; get_field("sourceName", Types::String); end
    # @!attribute [r] source_type
    # @return [String] <tt>sourceType</tt> field
    def source_type; get_field("sourceType", Types::String); end
    # @!attribute [r] source_settings
    # @return [Hash] <tt>sourceSettings</tt> field
    def source_settings; get_field("sourceSettings", Types::Object); end
    Requests::GetSourceSettings::Response = self
  end
  # @see Requests::SetSourceSettings
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setsourcesettings
  class SetSourceSettings < Response
    # @!attribute [r] source_name
    # @return [String] <tt>sourceName</tt> field
    def source_name; get_field("sourceName", Types::String); end
    # @!attribute [r] source_type
    # @return [String] <tt>sourceType</tt> field
    def source_type; get_field("sourceType", Types::String); end
    # @!attribute [r] source_settings
    # @return [Hash] <tt>sourceSettings</tt> field
    def source_settings; get_field("sourceSettings", Types::Object); end
    Requests::SetSourceSettings::Response = self
  end
  # @see Requests::GetTextGDIPlusProperties
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#gettextgdiplusproperties
  class GetTextGDIPlusProperties < Response
    # @!attribute [r] source
    # @return [String] <tt>source</tt> field
    def source; get_field("source", Types::String); end
    # @!attribute [r] align
    # @return [String] <tt>align</tt> field
    def align; get_field("align", Types::String); end
    # @!attribute [r] bk_color
    # @return [Integer] <tt>bk_color</tt> field
    def bk_color; get_field("bk_color", Types::Integer); end
    # @!attribute [r] bk_opacity
    # @return [Integer] <tt>bk_opacity</tt> field
    def bk_opacity; get_field("bk_opacity", Types::Integer); end
    # @!attribute [r] chatlog
    # @return [Boolean] <tt>chatlog</tt> field
    def chatlog; get_field("chatlog", Types::Boolean); end
    # @!attribute [r] chatlog_lines
    # @return [Integer] <tt>chatlog_lines</tt> field
    def chatlog_lines; get_field("chatlog_lines", Types::Integer); end
    # @!attribute [r] color
    # @return [Integer] <tt>color</tt> field
    def color; get_field("color", Types::Integer); end
    # @!attribute [r] extents
    # @return [Boolean] <tt>extents</tt> field
    def extents; get_field("extents", Types::Boolean); end
    # @!attribute [r] extents_cx
    # @return [Integer] <tt>extents_cx</tt> field
    def extents_cx; get_field("extents_cx", Types::Integer); end
    # @!attribute [r] extents_cy
    # @return [Integer] <tt>extents_cy</tt> field
    def extents_cy; get_field("extents_cy", Types::Integer); end
    # @!attribute [r] file
    # @return [String] <tt>file</tt> field
    def file; get_field("file", Types::String); end
    # @!attribute [r] read_from_file
    # @return [Boolean] <tt>read_from_file</tt> field
    def read_from_file; get_field("read_from_file", Types::Boolean); end
    # @!attribute [r] font
    # @return [Hash] <tt>font</tt> field
    def font; get_field("font", Types::Object[{:face=>{:type=>Types::String, :json_name=>"face"}, :flags=>{:type=>Types::Integer, :json_name=>"flags"}, :size=>{:type=>Types::Integer, :json_name=>"size"}, :style=>{:type=>Types::String, :json_name=>"style"}}]); end
    # @!attribute [r] gradient
    # @return [Boolean] <tt>gradient</tt> field
    def gradient; get_field("gradient", Types::Boolean); end
    # @!attribute [r] gradient_color
    # @return [Integer] <tt>gradient_color</tt> field
    def gradient_color; get_field("gradient_color", Types::Integer); end
    # @!attribute [r] gradient_dir
    # @return [Float] <tt>gradient_dir</tt> field
    def gradient_dir; get_field("gradient_dir", Types::Float); end
    # @!attribute [r] gradient_opacity
    # @return [Integer] <tt>gradient_opacity</tt> field
    def gradient_opacity; get_field("gradient_opacity", Types::Integer); end
    # @!attribute [r] outline
    # @return [Boolean] <tt>outline</tt> field
    def outline; get_field("outline", Types::Boolean); end
    # @!attribute [r] outline_color
    # @return [Integer] <tt>outline_color</tt> field
    def outline_color; get_field("outline_color", Types::Integer); end
    # @!attribute [r] outline_size
    # @return [Integer] <tt>outline_size</tt> field
    def outline_size; get_field("outline_size", Types::Integer); end
    # @!attribute [r] outline_opacity
    # @return [Integer] <tt>outline_opacity</tt> field
    def outline_opacity; get_field("outline_opacity", Types::Integer); end
    # @!attribute [r] text
    # @return [String] <tt>text</tt> field
    def text; get_field("text", Types::String); end
    # @!attribute [r] valign
    # @return [String] <tt>valign</tt> field
    def valign; get_field("valign", Types::String); end
    # @!attribute [r] vertical
    # @return [Boolean] <tt>vertical</tt> field
    def vertical; get_field("vertical", Types::Boolean); end
    Requests::GetTextGDIPlusProperties::Response = self
  end
  # @see Requests::SetTextGDIPlusProperties
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#settextgdiplusproperties
  class SetTextGDIPlusProperties < Response
    Requests::SetTextGDIPlusProperties::Response = self
  end
  # @see Requests::GetTextFreetype2Properties
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#gettextfreetype2properties
  class GetTextFreetype2Properties < Response
    # @!attribute [r] source
    # @return [String] <tt>source</tt> field
    def source; get_field("source", Types::String); end
    # @!attribute [r] color1
    # @return [Integer] <tt>color1</tt> field
    def color1; get_field("color1", Types::Integer); end
    # @!attribute [r] color2
    # @return [Integer] <tt>color2</tt> field
    def color2; get_field("color2", Types::Integer); end
    # @!attribute [r] custom_width
    # @return [Integer] <tt>custom_width</tt> field
    def custom_width; get_field("custom_width", Types::Integer); end
    # @!attribute [r] drop_shadow
    # @return [Boolean] <tt>drop_shadow</tt> field
    def drop_shadow; get_field("drop_shadow", Types::Boolean); end
    # @!attribute [r] font
    # @return [Hash] <tt>font</tt> field
    def font; get_field("font", Types::Object[{:face=>{:type=>Types::String, :json_name=>"face"}, :flags=>{:type=>Types::Integer, :json_name=>"flags"}, :size=>{:type=>Types::Integer, :json_name=>"size"}, :style=>{:type=>Types::String, :json_name=>"style"}}]); end
    # @!attribute [r] from_file
    # @return [Boolean] <tt>from_file</tt> field
    def from_file; get_field("from_file", Types::Boolean); end
    # @!attribute [r] log_mode
    # @return [Boolean] <tt>log_mode</tt> field
    def log_mode; get_field("log_mode", Types::Boolean); end
    # @!attribute [r] outline
    # @return [Boolean] <tt>outline</tt> field
    def outline; get_field("outline", Types::Boolean); end
    # @!attribute [r] text
    # @return [String] <tt>text</tt> field
    def text; get_field("text", Types::String); end
    # @!attribute [r] text_file
    # @return [String] <tt>text_file</tt> field
    def text_file; get_field("text_file", Types::String); end
    # @!attribute [r] word_wrap
    # @return [Boolean] <tt>word_wrap</tt> field
    def word_wrap; get_field("word_wrap", Types::Boolean); end
    Requests::GetTextFreetype2Properties::Response = self
  end
  # @see Requests::SetTextFreetype2Properties
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#settextfreetype2properties
  class SetTextFreetype2Properties < Response
    Requests::SetTextFreetype2Properties::Response = self
  end
  # @see Requests::GetBrowserSourceProperties
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getbrowsersourceproperties
  class GetBrowserSourceProperties < Response
    # @!attribute [r] source
    # @return [String] <tt>source</tt> field
    def source; get_field("source", Types::String); end
    # @!attribute [r] is_local_file
    # @return [Boolean] <tt>is_local_file</tt> field
    def is_local_file; get_field("is_local_file", Types::Boolean); end
    # @!attribute [r] local_file
    # @return [String] <tt>local_file</tt> field
    def local_file; get_field("local_file", Types::String); end
    # @!attribute [r] url
    # @return [String] <tt>url</tt> field
    def url; get_field("url", Types::String); end
    # @!attribute [r] css
    # @return [String] <tt>css</tt> field
    def css; get_field("css", Types::String); end
    # @!attribute [r] width
    # @return [Integer] <tt>width</tt> field
    def width; get_field("width", Types::Integer); end
    # @!attribute [r] height
    # @return [Integer] <tt>height</tt> field
    def height; get_field("height", Types::Integer); end
    # @!attribute [r] fps
    # @return [Integer] <tt>fps</tt> field
    def fps; get_field("fps", Types::Integer); end
    # @!attribute [r] shutdown
    # @return [Boolean] <tt>shutdown</tt> field
    def shutdown; get_field("shutdown", Types::Boolean); end
    Requests::GetBrowserSourceProperties::Response = self
  end
  # @see Requests::SetBrowserSourceProperties
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setbrowsersourceproperties
  class SetBrowserSourceProperties < Response
    Requests::SetBrowserSourceProperties::Response = self
  end
  # @see Requests::GetSpecialSources
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getspecialsources
  class GetSpecialSources < Response
    # @!attribute [r] desktop_1
    # @return [String, nil] <tt>desktop-1</tt> field
    def desktop_1; get_field("desktop-1", Types::Optional[Types::String]); end
    # @!attribute [r] desktop_2
    # @return [String, nil] <tt>desktop-2</tt> field
    def desktop_2; get_field("desktop-2", Types::Optional[Types::String]); end
    # @!attribute [r] mic_1
    # @return [String, nil] <tt>mic-1</tt> field
    def mic_1; get_field("mic-1", Types::Optional[Types::String]); end
    # @!attribute [r] mic_2
    # @return [String, nil] <tt>mic-2</tt> field
    def mic_2; get_field("mic-2", Types::Optional[Types::String]); end
    # @!attribute [r] mic_3
    # @return [String, nil] <tt>mic-3</tt> field
    def mic_3; get_field("mic-3", Types::Optional[Types::String]); end
    Requests::GetSpecialSources::Response = self
  end
  # @see Requests::GetSourceFilters
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getsourcefilters
  class GetSourceFilters < Response
    # @!attribute [r] filters
    # @return [Array<Hash>] <tt>filters</tt> field
    def filters; get_field("filters", Types::Array[Types::Object[{:enabled=>{:type=>Types::Boolean, :json_name=>"enabled"}, :type=>{:type=>Types::String, :json_name=>"type"}, :name=>{:type=>Types::String, :json_name=>"name"}, :settings=>{:type=>Types::Object, :json_name=>"settings"}}]]); end
    Requests::GetSourceFilters::Response = self
  end
  # @see Requests::GetSourceFilterInfo
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getsourcefilterinfo
  class GetSourceFilterInfo < Response
    # @!attribute [r] enabled
    # @return [Boolean] <tt>enabled</tt> field
    def enabled; get_field("enabled", Types::Boolean); end
    # @!attribute [r] type
    # @return [String] <tt>type</tt> field
    def type; get_field("type", Types::String); end
    # @!attribute [r] name
    # @return [String] <tt>name</tt> field
    def name; get_field("name", Types::String); end
    # @!attribute [r] settings
    # @return [Hash] <tt>settings</tt> field
    def settings; get_field("settings", Types::Object); end
    Requests::GetSourceFilterInfo::Response = self
  end
  # @see Requests::AddFilterToSource
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#addfiltertosource
  class AddFilterToSource < Response
    Requests::AddFilterToSource::Response = self
  end
  # @see Requests::RemoveFilterFromSource
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#removefilterfromsource
  class RemoveFilterFromSource < Response
    Requests::RemoveFilterFromSource::Response = self
  end
  # @see Requests::ReorderSourceFilter
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#reordersourcefilter
  class ReorderSourceFilter < Response
    Requests::ReorderSourceFilter::Response = self
  end
  # @see Requests::MoveSourceFilter
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#movesourcefilter
  class MoveSourceFilter < Response
    Requests::MoveSourceFilter::Response = self
  end
  # @see Requests::SetSourceFilterSettings
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setsourcefiltersettings
  class SetSourceFilterSettings < Response
    Requests::SetSourceFilterSettings::Response = self
  end
  # @see Requests::SetSourceFilterVisibility
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setsourcefiltervisibility
  class SetSourceFilterVisibility < Response
    Requests::SetSourceFilterVisibility::Response = self
  end
  # @see Requests::GetAudioMonitorType
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getaudiomonitortype
  class GetAudioMonitorType < Response
    # @!attribute [r] monitor_type
    # @return [String] <tt>monitorType</tt> field
    def monitor_type; get_field("monitorType", Types::String); end
    Requests::GetAudioMonitorType::Response = self
  end
  # @see Requests::SetAudioMonitorType
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setaudiomonitortype
  class SetAudioMonitorType < Response
    Requests::SetAudioMonitorType::Response = self
  end
  # @see Requests::GetSourceDefaultSettings
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getsourcedefaultsettings
  class GetSourceDefaultSettings < Response
    # @!attribute [r] source_kind
    # @return [String] <tt>sourceKind</tt> field
    def source_kind; get_field("sourceKind", Types::String); end
    # @!attribute [r] default_settings
    # @return [Hash] <tt>defaultSettings</tt> field
    def default_settings; get_field("defaultSettings", Types::Object); end
    Requests::GetSourceDefaultSettings::Response = self
  end
  # @see Requests::TakeSourceScreenshot
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#takesourcescreenshot
  class TakeSourceScreenshot < Response
    # @!attribute [r] source_name
    # @return [String] <tt>sourceName</tt> field
    def source_name; get_field("sourceName", Types::String); end
    # @!attribute [r] img
    # @return [String] <tt>img</tt> field
    def img; get_field("img", Types::String); end
    # @!attribute [r] image_file
    # @return [String] <tt>imageFile</tt> field
    def image_file; get_field("imageFile", Types::String); end
    Requests::TakeSourceScreenshot::Response = self
  end
  # @see Requests::RefreshBrowserSource
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#refreshbrowsersource
  class RefreshBrowserSource < Response
    Requests::RefreshBrowserSource::Response = self
  end
  # @see Requests::ListOutputs
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#listoutputs
  class ListOutputs < Response
    # @!attribute [r] outputs
    # @return [Array<Output>] <tt>outputs</tt> field
    def outputs; get_field("outputs", Types::Array[Types::Output]); end
    Requests::ListOutputs::Response = self
  end
  # @see Requests::GetOutputInfo
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getoutputinfo
  class GetOutputInfo < Response
    # @!attribute [r] output_info
    # @return [Output] <tt>outputInfo</tt> field
    def output_info; get_field("outputInfo", Types::Output); end
    Requests::GetOutputInfo::Response = self
  end
  # @see Requests::StartOutput
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#startoutput
  class StartOutput < Response
    Requests::StartOutput::Response = self
  end
  # @see Requests::StopOutput
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#stopoutput
  class StopOutput < Response
    Requests::StopOutput::Response = self
  end
  # @see Requests::SetCurrentProfile
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setcurrentprofile
  class SetCurrentProfile < Response
    Requests::SetCurrentProfile::Response = self
  end
  # @see Requests::GetCurrentProfile
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getcurrentprofile
  class GetCurrentProfile < Response
    # @!attribute [r] profile_name
    # @return [String] <tt>profile-name</tt> field
    def profile_name; get_field("profile-name", Types::String); end
    Requests::GetCurrentProfile::Response = self
  end
  # @see Requests::ListProfiles
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#listprofiles
  class ListProfiles < Response
    # @!attribute [r] profiles
    # @return [Array<Hash>] <tt>profiles</tt> field
    def profiles; get_field("profiles", Types::Array[Types::Object[{:profile_name=>{:type=>Types::String, :json_name=>"profile-name"}}]]); end
    Requests::ListProfiles::Response = self
  end
  # @see Requests::GetRecordingStatus
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getrecordingstatus
  class GetRecordingStatus < Response
    # @!attribute [r] is_recording
    # @return [Boolean] <tt>isRecording</tt> field
    def is_recording; get_field("isRecording", Types::Boolean); end
    # @!attribute [r] is_recording_paused
    # @return [Boolean] <tt>isRecordingPaused</tt> field
    def is_recording_paused; get_field("isRecordingPaused", Types::Boolean); end
    # @!attribute [r] record_timecode
    # @return [String, nil] <tt>recordTimecode</tt> field
    def record_timecode; get_field("recordTimecode", Types::Optional[Types::String]); end
    # @!attribute [r] recording_filename
    # @return [String, nil] <tt>recordingFilename</tt> field
    def recording_filename; get_field("recordingFilename", Types::Optional[Types::String]); end
    Requests::GetRecordingStatus::Response = self
  end
  # @see Requests::StartStopRecording
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#startstoprecording
  class StartStopRecording < Response
    Requests::StartStopRecording::Response = self
  end
  # @see Requests::StartRecording
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#startrecording
  class StartRecording < Response
    Requests::StartRecording::Response = self
  end
  # @see Requests::StopRecording
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#stoprecording
  class StopRecording < Response
    Requests::StopRecording::Response = self
  end
  # @see Requests::PauseRecording
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#pauserecording
  class PauseRecording < Response
    Requests::PauseRecording::Response = self
  end
  # @see Requests::ResumeRecording
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#resumerecording
  class ResumeRecording < Response
    Requests::ResumeRecording::Response = self
  end
  # @see Requests::SetRecordingFolder
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setrecordingfolder
  class SetRecordingFolder < Response
    Requests::SetRecordingFolder::Response = self
  end
  # @see Requests::GetRecordingFolder
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getrecordingfolder
  class GetRecordingFolder < Response
    # @!attribute [r] rec_folder
    # @return [String] <tt>rec-folder</tt> field
    def rec_folder; get_field("rec-folder", Types::String); end
    Requests::GetRecordingFolder::Response = self
  end
  # @see Requests::GetReplayBufferStatus
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getreplaybufferstatus
  class GetReplayBufferStatus < Response
    # @!attribute [r] is_replay_buffer_active
    # @return [Boolean] <tt>isReplayBufferActive</tt> field
    def is_replay_buffer_active; get_field("isReplayBufferActive", Types::Boolean); end
    Requests::GetReplayBufferStatus::Response = self
  end
  # @see Requests::StartStopReplayBuffer
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#startstopreplaybuffer
  class StartStopReplayBuffer < Response
    Requests::StartStopReplayBuffer::Response = self
  end
  # @see Requests::StartReplayBuffer
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#startreplaybuffer
  class StartReplayBuffer < Response
    Requests::StartReplayBuffer::Response = self
  end
  # @see Requests::StopReplayBuffer
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#stopreplaybuffer
  class StopReplayBuffer < Response
    Requests::StopReplayBuffer::Response = self
  end
  # @see Requests::SaveReplayBuffer
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#savereplaybuffer
  class SaveReplayBuffer < Response
    Requests::SaveReplayBuffer::Response = self
  end
  # @see Requests::SetCurrentSceneCollection
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setcurrentscenecollection
  class SetCurrentSceneCollection < Response
    Requests::SetCurrentSceneCollection::Response = self
  end
  # @see Requests::GetCurrentSceneCollection
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getcurrentscenecollection
  class GetCurrentSceneCollection < Response
    # @!attribute [r] sc_name
    # @return [String] <tt>sc-name</tt> field
    def sc_name; get_field("sc-name", Types::String); end
    Requests::GetCurrentSceneCollection::Response = self
  end
  # @see Requests::ListSceneCollections
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#listscenecollections
  class ListSceneCollections < Response
    # @!attribute [r] scene_collections
    # @return [Array<ScenesCollection>] <tt>scene-collections</tt> field
    def scene_collections; get_field("scene-collections", Types::Array[Types::ScenesCollection]); end
    Requests::ListSceneCollections::Response = self
  end
  # @see Requests::GetSceneItemList
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getsceneitemlist
  class GetSceneItemList < Response
    # @!attribute [r] scene_name
    # @return [String] <tt>sceneName</tt> field
    def scene_name; get_field("sceneName", Types::String); end
    # @!attribute [r] scene_items
    # @return [Array<Hash>] <tt>sceneItems</tt> field
    def scene_items; get_field("sceneItems", Types::Array[Types::Object[{:item_id=>{:type=>Types::Integer, :json_name=>"itemId"}, :source_kind=>{:type=>Types::String, :json_name=>"sourceKind"}, :source_name=>{:type=>Types::String, :json_name=>"sourceName"}, :source_type=>{:type=>Types::String, :json_name=>"sourceType"}}]]); end
    Requests::GetSceneItemList::Response = self
  end
  # @see Requests::GetSceneItemProperties
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getsceneitemproperties
  class GetSceneItemProperties < Response
    # @!attribute [r] name
    # @return [String] <tt>name</tt> field
    def name; get_field("name", Types::String); end
    # @!attribute [r] item_id
    # @return [Integer] <tt>itemId</tt> field
    def item_id; get_field("itemId", Types::Integer); end
    # @!attribute [r] position
    # @return [Hash] <tt>position</tt> field
    def position; get_field("position", Types::Object[{:x=>{:type=>Types::Float, :json_name=>"x"}, :y=>{:type=>Types::Float, :json_name=>"y"}, :alignment=>{:type=>Types::Integer, :json_name=>"alignment"}}]); end
    # @!attribute [r] rotation
    # @return [Float] <tt>rotation</tt> field
    def rotation; get_field("rotation", Types::Float); end
    # @!attribute [r] scale
    # @return [Hash] <tt>scale</tt> field
    def scale; get_field("scale", Types::Object[{:x=>{:type=>Types::Float, :json_name=>"x"}, :y=>{:type=>Types::Float, :json_name=>"y"}, :filter=>{:type=>Types::String, :json_name=>"filter"}}]); end
    # @!attribute [r] crop
    # @return [Hash] <tt>crop</tt> field
    def crop; get_field("crop", Types::Object[{:top=>{:type=>Types::Integer, :json_name=>"top"}, :right=>{:type=>Types::Integer, :json_name=>"right"}, :bottom=>{:type=>Types::Integer, :json_name=>"bottom"}, :left=>{:type=>Types::Integer, :json_name=>"left"}}]); end
    # @!attribute [r] visible
    # @return [Boolean] <tt>visible</tt> field
    def visible; get_field("visible", Types::Boolean); end
    # @!attribute [r] muted
    # @return [Boolean] <tt>muted</tt> field
    def muted; get_field("muted", Types::Boolean); end
    # @!attribute [r] locked
    # @return [Boolean] <tt>locked</tt> field
    def locked; get_field("locked", Types::Boolean); end
    # @!attribute [r] bounds
    # @return [Hash] <tt>bounds</tt> field
    def bounds; get_field("bounds", Types::Object[{:type=>{:type=>Types::String, :json_name=>"type"}, :alignment=>{:type=>Types::Integer, :json_name=>"alignment"}, :x=>{:type=>Types::Float, :json_name=>"x"}, :y=>{:type=>Types::Float, :json_name=>"y"}}]); end
    # @!attribute [r] source_width
    # @return [Integer] <tt>sourceWidth</tt> field
    def source_width; get_field("sourceWidth", Types::Integer); end
    # @!attribute [r] source_height
    # @return [Integer] <tt>sourceHeight</tt> field
    def source_height; get_field("sourceHeight", Types::Integer); end
    # @!attribute [r] width
    # @return [Float] <tt>width</tt> field
    def width; get_field("width", Types::Float); end
    # @!attribute [r] height
    # @return [Float] <tt>height</tt> field
    def height; get_field("height", Types::Float); end
    # @!attribute [r] parent_group_name
    # @return [String, nil] <tt>parentGroupName</tt> field
    def parent_group_name; get_field("parentGroupName", Types::Optional[Types::String]); end
    # @!attribute [r] group_children
    # @return [Array<SceneItemTransform>, nil] <tt>groupChildren</tt> field
    def group_children; get_field("groupChildren", Types::Optional[Types::Array[Types::SceneItemTransform]]); end
    Requests::GetSceneItemProperties::Response = self
  end
  # @see Requests::SetSceneItemProperties
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setsceneitemproperties
  class SetSceneItemProperties < Response
    Requests::SetSceneItemProperties::Response = self
  end
  # @see Requests::ResetSceneItem
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#resetsceneitem
  class ResetSceneItem < Response
    Requests::ResetSceneItem::Response = self
  end
  # @see Requests::SetSceneItemRender
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setsceneitemrender
  class SetSceneItemRender < Response
    Requests::SetSceneItemRender::Response = self
  end
  # @see Requests::SetSceneItemPosition
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setsceneitemposition
  class SetSceneItemPosition < Response
    Requests::SetSceneItemPosition::Response = self
  end
  # @see Requests::SetSceneItemTransform
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setsceneitemtransform
  class SetSceneItemTransform < Response
    Requests::SetSceneItemTransform::Response = self
  end
  # @see Requests::SetSceneItemCrop
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setsceneitemcrop
  class SetSceneItemCrop < Response
    Requests::SetSceneItemCrop::Response = self
  end
  # @see Requests::DeleteSceneItem
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#deletesceneitem
  class DeleteSceneItem < Response
    Requests::DeleteSceneItem::Response = self
  end
  # @see Requests::AddSceneItem
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#addsceneitem
  class AddSceneItem < Response
    # @!attribute [r] item_id
    # @return [Integer] <tt>itemId</tt> field
    def item_id; get_field("itemId", Types::Integer); end
    Requests::AddSceneItem::Response = self
  end
  # @see Requests::DuplicateSceneItem
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#duplicatesceneitem
  class DuplicateSceneItem < Response
    # @!attribute [r] scene
    # @return [String] <tt>scene</tt> field
    def scene; get_field("scene", Types::String); end
    # @!attribute [r] item
    # @return [Hash] <tt>item</tt> field
    def item; get_field("item", Types::Object[{:id=>{:type=>Types::Integer, :json_name=>"id"}, :name=>{:type=>Types::String, :json_name=>"name"}}]); end
    Requests::DuplicateSceneItem::Response = self
  end
  # @see Requests::SetCurrentScene
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setcurrentscene
  class SetCurrentScene < Response
    Requests::SetCurrentScene::Response = self
  end
  # @see Requests::GetCurrentScene
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getcurrentscene
  class GetCurrentScene < Response
    # @!attribute [r] name
    # @return [String] <tt>name</tt> field
    def name; get_field("name", Types::String); end
    # @!attribute [r] sources
    # @return [Array<SceneItem>] <tt>sources</tt> field
    def sources; get_field("sources", Types::Array[Types::SceneItem]); end
    Requests::GetCurrentScene::Response = self
  end
  # @see Requests::GetSceneList
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getscenelist
  class GetSceneList < Response
    # @!attribute [r] current_scene
    # @return [String] <tt>current-scene</tt> field
    def current_scene; get_field("current-scene", Types::String); end
    # @!attribute [r] scenes
    # @return [Array<Scene>] <tt>scenes</tt> field
    def scenes; get_field("scenes", Types::Array[Types::Scene]); end
    Requests::GetSceneList::Response = self
  end
  # @see Requests::CreateScene
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#createscene
  class CreateScene < Response
    Requests::CreateScene::Response = self
  end
  # @see Requests::ReorderSceneItems
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#reordersceneitems
  class ReorderSceneItems < Response
    Requests::ReorderSceneItems::Response = self
  end
  # @see Requests::SetSceneTransitionOverride
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setscenetransitionoverride
  class SetSceneTransitionOverride < Response
    Requests::SetSceneTransitionOverride::Response = self
  end
  # @see Requests::RemoveSceneTransitionOverride
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#removescenetransitionoverride
  class RemoveSceneTransitionOverride < Response
    Requests::RemoveSceneTransitionOverride::Response = self
  end
  # @see Requests::GetSceneTransitionOverride
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getscenetransitionoverride
  class GetSceneTransitionOverride < Response
    # @!attribute [r] transition_name
    # @return [String] <tt>transitionName</tt> field
    def transition_name; get_field("transitionName", Types::String); end
    # @!attribute [r] transition_duration
    # @return [Integer] <tt>transitionDuration</tt> field
    def transition_duration; get_field("transitionDuration", Types::Integer); end
    Requests::GetSceneTransitionOverride::Response = self
  end
  # @see Requests::GetStreamingStatus
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getstreamingstatus
  class GetStreamingStatus < Response
    # @!attribute [r] streaming
    # @return [Boolean] <tt>streaming</tt> field
    def streaming; get_field("streaming", Types::Boolean); end
    # @!attribute [r] recording
    # @return [Boolean] <tt>recording</tt> field
    def recording; get_field("recording", Types::Boolean); end
    # @!attribute [r] recording_paused
    # @return [Boolean] <tt>recording-paused</tt> field
    def recording_paused; get_field("recording-paused", Types::Boolean); end
    # @!attribute [r] virtualcam
    # @return [Boolean] <tt>virtualcam</tt> field
    def virtualcam; get_field("virtualcam", Types::Boolean); end
    # @!attribute [r] preview_only
    # @return [Boolean] <tt>preview-only</tt> field
    def preview_only; get_field("preview-only", Types::Boolean); end
    # @!attribute [r] stream_timecode
    # @return [String, nil] <tt>stream-timecode</tt> field
    def stream_timecode; get_field("stream-timecode", Types::Optional[Types::String]); end
    # @!attribute [r] rec_timecode
    # @return [String, nil] <tt>rec-timecode</tt> field
    def rec_timecode; get_field("rec-timecode", Types::Optional[Types::String]); end
    # @!attribute [r] virtualcam_timecode
    # @return [String, nil] <tt>virtualcam-timecode</tt> field
    def virtualcam_timecode; get_field("virtualcam-timecode", Types::Optional[Types::String]); end
    Requests::GetStreamingStatus::Response = self
  end
  # @see Requests::StartStopStreaming
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#startstopstreaming
  class StartStopStreaming < Response
    Requests::StartStopStreaming::Response = self
  end
  # @see Requests::StartStreaming
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#startstreaming
  class StartStreaming < Response
    Requests::StartStreaming::Response = self
  end
  # @see Requests::StopStreaming
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#stopstreaming
  class StopStreaming < Response
    Requests::StopStreaming::Response = self
  end
  # @see Requests::SetStreamSettings
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setstreamsettings
  class SetStreamSettings < Response
    Requests::SetStreamSettings::Response = self
  end
  # @see Requests::GetStreamSettings
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getstreamsettings
  class GetStreamSettings < Response
    # @!attribute [r] type
    # @return [String] <tt>type</tt> field
    def type; get_field("type", Types::String); end
    # @!attribute [r] settings
    # @return [Hash] <tt>settings</tt> field
    def settings; get_field("settings", Types::Object[{:server=>{:type=>Types::String, :json_name=>"server"}, :key=>{:type=>Types::String, :json_name=>"key"}, :use_auth=>{:type=>Types::Boolean, :json_name=>"use_auth"}, :username=>{:type=>Types::String, :json_name=>"username"}, :password=>{:type=>Types::String, :json_name=>"password"}}]); end
    Requests::GetStreamSettings::Response = self
  end
  # @see Requests::SaveStreamSettings
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#savestreamsettings
  class SaveStreamSettings < Response
    Requests::SaveStreamSettings::Response = self
  end
  # @see Requests::SendCaptions
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#sendcaptions
  class SendCaptions < Response
    Requests::SendCaptions::Response = self
  end
  # @see Requests::GetStudioModeStatus
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getstudiomodestatus
  class GetStudioModeStatus < Response
    # @!attribute [r] studio_mode
    # @return [Boolean] <tt>studio-mode</tt> field
    def studio_mode; get_field("studio-mode", Types::Boolean); end
    Requests::GetStudioModeStatus::Response = self
  end
  # @see Requests::GetPreviewScene
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getpreviewscene
  class GetPreviewScene < Response
    # @!attribute [r] name
    # @return [String] <tt>name</tt> field
    def name; get_field("name", Types::String); end
    # @!attribute [r] sources
    # @return [Array<SceneItem>] <tt>sources</tt> field
    def sources; get_field("sources", Types::Array[Types::SceneItem]); end
    Requests::GetPreviewScene::Response = self
  end
  # @see Requests::SetPreviewScene
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setpreviewscene
  class SetPreviewScene < Response
    Requests::SetPreviewScene::Response = self
  end
  # @see Requests::TransitionToProgram
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#transitiontoprogram
  class TransitionToProgram < Response
    Requests::TransitionToProgram::Response = self
  end
  # @see Requests::EnableStudioMode
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#enablestudiomode
  class EnableStudioMode < Response
    Requests::EnableStudioMode::Response = self
  end
  # @see Requests::DisableStudioMode
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#disablestudiomode
  class DisableStudioMode < Response
    Requests::DisableStudioMode::Response = self
  end
  # @see Requests::ToggleStudioMode
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#togglestudiomode
  class ToggleStudioMode < Response
    Requests::ToggleStudioMode::Response = self
  end
  # @see Requests::GetTransitionList
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#gettransitionlist
  class GetTransitionList < Response
    # @!attribute [r] current_transition
    # @return [String] <tt>current-transition</tt> field
    def current_transition; get_field("current-transition", Types::String); end
    # @!attribute [r] transitions
    # @return [Array<Hash>] <tt>transitions</tt> field
    def transitions; get_field("transitions", Types::Array[Types::Object[{:name=>{:type=>Types::String, :json_name=>"name"}}]]); end
    Requests::GetTransitionList::Response = self
  end
  # @see Requests::GetCurrentTransition
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getcurrenttransition
  class GetCurrentTransition < Response
    # @!attribute [r] name
    # @return [String] <tt>name</tt> field
    def name; get_field("name", Types::String); end
    # @!attribute [r] duration
    # @return [Integer, nil] <tt>duration</tt> field
    def duration; get_field("duration", Types::Optional[Types::Integer]); end
    Requests::GetCurrentTransition::Response = self
  end
  # @see Requests::SetCurrentTransition
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#setcurrenttransition
  class SetCurrentTransition < Response
    Requests::SetCurrentTransition::Response = self
  end
  # @see Requests::SetTransitionDuration
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#settransitionduration
  class SetTransitionDuration < Response
    Requests::SetTransitionDuration::Response = self
  end
  # @see Requests::GetTransitionDuration
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#gettransitionduration
  class GetTransitionDuration < Response
    # @!attribute [r] transition_duration
    # @return [Integer] <tt>transition-duration</tt> field
    def transition_duration; get_field("transition-duration", Types::Integer); end
    Requests::GetTransitionDuration::Response = self
  end
  # @see Requests::GetTransitionPosition
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#gettransitionposition
  class GetTransitionPosition < Response
    # @!attribute [r] position
    # @return [Float] <tt>position</tt> field
    def position; get_field("position", Types::Float); end
    Requests::GetTransitionPosition::Response = self
  end
  # @see Requests::GetTransitionSettings
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#gettransitionsettings
  class GetTransitionSettings < Response
    # @!attribute [r] transition_settings
    # @return [Hash] <tt>transitionSettings</tt> field
    def transition_settings; get_field("transitionSettings", Types::Object); end
    Requests::GetTransitionSettings::Response = self
  end
  # @see Requests::SetTransitionSettings
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#settransitionsettings
  class SetTransitionSettings < Response
    # @!attribute [r] transition_settings
    # @return [Hash] <tt>transitionSettings</tt> field
    def transition_settings; get_field("transitionSettings", Types::Object); end
    Requests::SetTransitionSettings::Response = self
  end
  # @see Requests::ReleaseTBar
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#releasetbar
  class ReleaseTBar < Response
    Requests::ReleaseTBar::Response = self
  end
  # @see Requests::SetTBarPosition
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#settbarposition
  class SetTBarPosition < Response
    Requests::SetTBarPosition::Response = self
  end
  # @see Requests::GetVirtualCamStatus
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#getvirtualcamstatus
  class GetVirtualCamStatus < Response
    # @!attribute [r] is_virtual_cam
    # @return [Boolean] <tt>isVirtualCam</tt> field
    def is_virtual_cam; get_field("isVirtualCam", Types::Boolean); end
    # @!attribute [r] virtual_cam_timecode
    # @return [String, nil] <tt>virtualCamTimecode</tt> field
    def virtual_cam_timecode; get_field("virtualCamTimecode", Types::Optional[Types::String]); end
    Requests::GetVirtualCamStatus::Response = self
  end
  # @see Requests::StartStopVirtualCam
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#startstopvirtualcam
  class StartStopVirtualCam < Response
    Requests::StartStopVirtualCam::Response = self
  end
  # @see Requests::StartVirtualCam
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#startvirtualcam
  class StartVirtualCam < Response
    Requests::StartVirtualCam::Response = self
  end
  # @see Requests::StopVirtualCam
  # @see https://github.com/Palakis/obs-websocket/blob/4.9.1/docs/generated/protocol.md#stopvirtualcam
  class StopVirtualCam < Response
    Requests::StopVirtualCam::Response = self
  end
end  # module Responses
end  # module OBS::WebSocket::Protocol
