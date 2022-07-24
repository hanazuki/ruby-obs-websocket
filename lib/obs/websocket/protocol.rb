# frozen_string_literal: false

# The protocol definition of obs-websocket. Generated from <https://raw.githubusercontent.com/obsproject/obs-websocket/5.0.0/docs/generated/protocol.json>.
# @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md
module OBS::WebSocket::Protocol
  # The version of obs-websocket from which this protocol definition is genereted.
  VERSION = "5.0.0"
module Enums
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#eventsubscription
  module EventSubscription
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#eventsubscriptionnone
    None = 0
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#eventsubscriptiongeneral
    General = (1 << 0)
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#eventsubscriptionconfig
    Config = (1 << 1)
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#eventsubscriptionscenes
    Scenes = (1 << 2)
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#eventsubscriptioninputs
    Inputs = (1 << 3)
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#eventsubscriptiontransitions
    Transitions = (1 << 4)
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#eventsubscriptionfilters
    Filters = (1 << 5)
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#eventsubscriptionoutputs
    Outputs = (1 << 6)
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#eventsubscriptionsceneitems
    SceneItems = (1 << 7)
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#eventsubscriptionmediainputs
    MediaInputs = (1 << 8)
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#eventsubscriptionvendors
    Vendors = (1 << 9)
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#eventsubscriptionui
    Ui = (1 << 10)
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#eventsubscriptionall
    All = (General | Config | Scenes | Inputs | Transitions | Filters | Outputs | SceneItems | MediaInputs | Vendors)
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#eventsubscriptioninputvolumemeters
    InputVolumeMeters = (1 << 16)
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#eventsubscriptioninputactivestatechanged
    InputActiveStateChanged = (1 << 17)
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#eventsubscriptioninputshowstatechanged
    InputShowStateChanged = (1 << 18)
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#eventsubscriptionsceneitemtransformchanged
    SceneItemTransformChanged = (1 << 19)
  end
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#requestbatchexecutiontype
  module RequestBatchExecutionType
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#requestbatchexecutiontypenone
    None = -1
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#requestbatchexecutiontypeserialrealtime
    SerialRealtime = 0
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#requestbatchexecutiontypeserialframe
    SerialFrame = 1
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#requestbatchexecutiontypeparallel
    Parallel = 2
  end
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#requeststatus
  module RequestStatus
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#requeststatusunknown
    Unknown = 0
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#requeststatusnoerror
    NoError = 10
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#requeststatussuccess
    Success = 100
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#requeststatusmissingrequesttype
    MissingRequestType = 203
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#requeststatusunknownrequesttype
    UnknownRequestType = 204
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#requeststatusgenericerror
    GenericError = 205
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#requeststatusunsupportedrequestbatchexecutiontype
    UnsupportedRequestBatchExecutionType = 206
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#requeststatusmissingrequestfield
    MissingRequestField = 300
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#requeststatusmissingrequestdata
    MissingRequestData = 301
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#requeststatusinvalidrequestfield
    InvalidRequestField = 400
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#requeststatusinvalidrequestfieldtype
    InvalidRequestFieldType = 401
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#requeststatusrequestfieldoutofrange
    RequestFieldOutOfRange = 402
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#requeststatusrequestfieldempty
    RequestFieldEmpty = 403
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#requeststatustoomanyrequestfields
    TooManyRequestFields = 404
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#requeststatusoutputrunning
    OutputRunning = 500
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#requeststatusoutputnotrunning
    OutputNotRunning = 501
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#requeststatusoutputpaused
    OutputPaused = 502
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#requeststatusoutputnotpaused
    OutputNotPaused = 503
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#requeststatusoutputdisabled
    OutputDisabled = 504
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#requeststatusstudiomodeactive
    StudioModeActive = 505
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#requeststatusstudiomodenotactive
    StudioModeNotActive = 506
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#requeststatusresourcenotfound
    ResourceNotFound = 600
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#requeststatusresourcealreadyexists
    ResourceAlreadyExists = 601
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#requeststatusinvalidresourcetype
    InvalidResourceType = 602
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#requeststatusnotenoughresources
    NotEnoughResources = 603
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#requeststatusinvalidresourcestate
    InvalidResourceState = 604
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#requeststatusinvalidinputkind
    InvalidInputKind = 605
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#requeststatusresourcenotconfigurable
    ResourceNotConfigurable = 606
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#requeststatusinvalidfilterkind
    InvalidFilterKind = 607
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#requeststatusresourcecreationfailed
    ResourceCreationFailed = 700
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#requeststatusresourceactionfailed
    ResourceActionFailed = 701
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#requeststatusrequestprocessingfailed
    RequestProcessingFailed = 702
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#requeststatuscannotact
    CannotAct = 703
  end
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#websocketclosecode
  module WebSocketCloseCode
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#websocketclosecodedontclose
    DontClose = 0
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#websocketclosecodeunknownreason
    UnknownReason = 4000
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#websocketclosecodemessagedecodeerror
    MessageDecodeError = 4002
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#websocketclosecodemissingdatafield
    MissingDataField = 4003
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#websocketclosecodeinvaliddatafieldtype
    InvalidDataFieldType = 4004
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#websocketclosecodeinvaliddatafieldvalue
    InvalidDataFieldValue = 4005
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#websocketclosecodeunknownopcode
    UnknownOpCode = 4006
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#websocketclosecodenotidentified
    NotIdentified = 4007
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#websocketclosecodealreadyidentified
    AlreadyIdentified = 4008
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#websocketclosecodeauthenticationfailed
    AuthenticationFailed = 4009
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#websocketclosecodeunsupportedrpcversion
    UnsupportedRpcVersion = 4010
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#websocketclosecodesessioninvalidated
    SessionInvalidated = 4011
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#websocketclosecodeunsupportedfeature
    UnsupportedFeature = 4012
  end
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#websocketopcode
  module WebSocketOpCode
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#websocketopcodehello
    Hello = 0
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#websocketopcodeidentify
    Identify = 1
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#websocketopcodeidentified
    Identified = 2
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#websocketopcodereidentify
    Reidentify = 3
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#websocketopcodeevent
    Event = 5
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#websocketopcoderequest
    Request = 6
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#websocketopcoderequestresponse
    RequestResponse = 7
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#websocketopcoderequestbatch
    RequestBatch = 8
    # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#websocketopcoderequestbatchresponse
    RequestBatchResponse = 9
  end
end  # module Enums
module Events
  # An instance of <tt>CurrentSceneCollectionChanging</tt> event.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#currentscenecollectionchanging
  class CurrentSceneCollectionChanging < Event
    TYPE = "CurrentSceneCollectionChanging"
    CLASSES_BY_TYPE[TYPE] = self
    # @!attribute [r] scene_collection_name
    # @return [String] <tt>sceneCollectionName</tt> field
    def scene_collection_name; get_field("sceneCollectionName", TypeConverters::String); end
  end
  # An instance of <tt>CurrentSceneCollectionChanged</tt> event.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#currentscenecollectionchanged
  class CurrentSceneCollectionChanged < Event
    TYPE = "CurrentSceneCollectionChanged"
    CLASSES_BY_TYPE[TYPE] = self
    # @!attribute [r] scene_collection_name
    # @return [String] <tt>sceneCollectionName</tt> field
    def scene_collection_name; get_field("sceneCollectionName", TypeConverters::String); end
  end
  # An instance of <tt>SceneCollectionListChanged</tt> event.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#scenecollectionlistchanged
  class SceneCollectionListChanged < Event
    TYPE = "SceneCollectionListChanged"
    CLASSES_BY_TYPE[TYPE] = self
    # @!attribute [r] scene_collections
    # @return [Array<String>] <tt>sceneCollections</tt> field
    def scene_collections; get_field("sceneCollections", TypeConverters::Array[TypeConverters::String]); end
  end
  # An instance of <tt>CurrentProfileChanging</tt> event.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#currentprofilechanging
  class CurrentProfileChanging < Event
    TYPE = "CurrentProfileChanging"
    CLASSES_BY_TYPE[TYPE] = self
    # @!attribute [r] profile_name
    # @return [String] <tt>profileName</tt> field
    def profile_name; get_field("profileName", TypeConverters::String); end
  end
  # An instance of <tt>CurrentProfileChanged</tt> event.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#currentprofilechanged
  class CurrentProfileChanged < Event
    TYPE = "CurrentProfileChanged"
    CLASSES_BY_TYPE[TYPE] = self
    # @!attribute [r] profile_name
    # @return [String] <tt>profileName</tt> field
    def profile_name; get_field("profileName", TypeConverters::String); end
  end
  # An instance of <tt>ProfileListChanged</tt> event.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#profilelistchanged
  class ProfileListChanged < Event
    TYPE = "ProfileListChanged"
    CLASSES_BY_TYPE[TYPE] = self
    # @!attribute [r] profiles
    # @return [Array<String>] <tt>profiles</tt> field
    def profiles; get_field("profiles", TypeConverters::Array[TypeConverters::String]); end
  end
  # An instance of <tt>SourceFilterListReindexed</tt> event.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#sourcefilterlistreindexed
  class SourceFilterListReindexed < Event
    TYPE = "SourceFilterListReindexed"
    CLASSES_BY_TYPE[TYPE] = self
    # @!attribute [r] source_name
    # @return [String] <tt>sourceName</tt> field
    def source_name; get_field("sourceName", TypeConverters::String); end
    # @!attribute [r] filters
    # @return [Array<Hash>] <tt>filters</tt> field
    def filters; get_field("filters", TypeConverters::Array[TypeConverters::Object]); end
  end
  # An instance of <tt>SourceFilterCreated</tt> event.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#sourcefiltercreated
  class SourceFilterCreated < Event
    TYPE = "SourceFilterCreated"
    CLASSES_BY_TYPE[TYPE] = self
    # @!attribute [r] source_name
    # @return [String] <tt>sourceName</tt> field
    def source_name; get_field("sourceName", TypeConverters::String); end
    # @!attribute [r] filter_name
    # @return [String] <tt>filterName</tt> field
    def filter_name; get_field("filterName", TypeConverters::String); end
    # @!attribute [r] filter_kind
    # @return [String] <tt>filterKind</tt> field
    def filter_kind; get_field("filterKind", TypeConverters::String); end
    # @!attribute [r] filter_index
    # @return [Numeric] <tt>filterIndex</tt> field
    def filter_index; get_field("filterIndex", TypeConverters::Number); end
    # @!attribute [r] filter_settings
    # @return [Hash] <tt>filterSettings</tt> field
    def filter_settings; get_field("filterSettings", TypeConverters::Object); end
    # @!attribute [r] default_filter_settings
    # @return [Hash] <tt>defaultFilterSettings</tt> field
    def default_filter_settings; get_field("defaultFilterSettings", TypeConverters::Object); end
  end
  # An instance of <tt>SourceFilterRemoved</tt> event.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#sourcefilterremoved
  class SourceFilterRemoved < Event
    TYPE = "SourceFilterRemoved"
    CLASSES_BY_TYPE[TYPE] = self
    # @!attribute [r] source_name
    # @return [String] <tt>sourceName</tt> field
    def source_name; get_field("sourceName", TypeConverters::String); end
    # @!attribute [r] filter_name
    # @return [String] <tt>filterName</tt> field
    def filter_name; get_field("filterName", TypeConverters::String); end
  end
  # An instance of <tt>SourceFilterNameChanged</tt> event.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#sourcefilternamechanged
  class SourceFilterNameChanged < Event
    TYPE = "SourceFilterNameChanged"
    CLASSES_BY_TYPE[TYPE] = self
    # @!attribute [r] source_name
    # @return [String] <tt>sourceName</tt> field
    def source_name; get_field("sourceName", TypeConverters::String); end
    # @!attribute [r] old_filter_name
    # @return [String] <tt>oldFilterName</tt> field
    def old_filter_name; get_field("oldFilterName", TypeConverters::String); end
    # @!attribute [r] filter_name
    # @return [String] <tt>filterName</tt> field
    def filter_name; get_field("filterName", TypeConverters::String); end
  end
  # An instance of <tt>SourceFilterEnableStateChanged</tt> event.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#sourcefilterenablestatechanged
  class SourceFilterEnableStateChanged < Event
    TYPE = "SourceFilterEnableStateChanged"
    CLASSES_BY_TYPE[TYPE] = self
    # @!attribute [r] source_name
    # @return [String] <tt>sourceName</tt> field
    def source_name; get_field("sourceName", TypeConverters::String); end
    # @!attribute [r] filter_name
    # @return [String] <tt>filterName</tt> field
    def filter_name; get_field("filterName", TypeConverters::String); end
    # @!attribute [r] filter_enabled
    # @return [Boolean] <tt>filterEnabled</tt> field
    def filter_enabled; get_field("filterEnabled", TypeConverters::Boolean); end
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
    def input_name; get_field("inputName", TypeConverters::String); end
    # @!attribute [r] input_kind
    # @return [String] <tt>inputKind</tt> field
    def input_kind; get_field("inputKind", TypeConverters::String); end
    # @!attribute [r] unversioned_input_kind
    # @return [String] <tt>unversionedInputKind</tt> field
    def unversioned_input_kind; get_field("unversionedInputKind", TypeConverters::String); end
    # @!attribute [r] input_settings
    # @return [Hash] <tt>inputSettings</tt> field
    def input_settings; get_field("inputSettings", TypeConverters::Object); end
    # @!attribute [r] default_input_settings
    # @return [Hash] <tt>defaultInputSettings</tt> field
    def default_input_settings; get_field("defaultInputSettings", TypeConverters::Object); end
  end
  # An instance of <tt>InputRemoved</tt> event.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#inputremoved
  class InputRemoved < Event
    TYPE = "InputRemoved"
    CLASSES_BY_TYPE[TYPE] = self
    # @!attribute [r] input_name
    # @return [String] <tt>inputName</tt> field
    def input_name; get_field("inputName", TypeConverters::String); end
  end
  # An instance of <tt>InputNameChanged</tt> event.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#inputnamechanged
  class InputNameChanged < Event
    TYPE = "InputNameChanged"
    CLASSES_BY_TYPE[TYPE] = self
    # @!attribute [r] old_input_name
    # @return [String] <tt>oldInputName</tt> field
    def old_input_name; get_field("oldInputName", TypeConverters::String); end
    # @!attribute [r] input_name
    # @return [String] <tt>inputName</tt> field
    def input_name; get_field("inputName", TypeConverters::String); end
  end
  # An instance of <tt>InputActiveStateChanged</tt> event.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#inputactivestatechanged
  class InputActiveStateChanged < Event
    TYPE = "InputActiveStateChanged"
    CLASSES_BY_TYPE[TYPE] = self
    # @!attribute [r] input_name
    # @return [String] <tt>inputName</tt> field
    def input_name; get_field("inputName", TypeConverters::String); end
    # @!attribute [r] video_active
    # @return [Boolean] <tt>videoActive</tt> field
    def video_active; get_field("videoActive", TypeConverters::Boolean); end
  end
  # An instance of <tt>InputShowStateChanged</tt> event.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#inputshowstatechanged
  class InputShowStateChanged < Event
    TYPE = "InputShowStateChanged"
    CLASSES_BY_TYPE[TYPE] = self
    # @!attribute [r] input_name
    # @return [String] <tt>inputName</tt> field
    def input_name; get_field("inputName", TypeConverters::String); end
    # @!attribute [r] video_showing
    # @return [Boolean] <tt>videoShowing</tt> field
    def video_showing; get_field("videoShowing", TypeConverters::Boolean); end
  end
  # An instance of <tt>InputMuteStateChanged</tt> event.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#inputmutestatechanged
  class InputMuteStateChanged < Event
    TYPE = "InputMuteStateChanged"
    CLASSES_BY_TYPE[TYPE] = self
    # @!attribute [r] input_name
    # @return [String] <tt>inputName</tt> field
    def input_name; get_field("inputName", TypeConverters::String); end
    # @!attribute [r] input_muted
    # @return [Boolean] <tt>inputMuted</tt> field
    def input_muted; get_field("inputMuted", TypeConverters::Boolean); end
  end
  # An instance of <tt>InputVolumeChanged</tt> event.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#inputvolumechanged
  class InputVolumeChanged < Event
    TYPE = "InputVolumeChanged"
    CLASSES_BY_TYPE[TYPE] = self
    # @!attribute [r] input_name
    # @return [String] <tt>inputName</tt> field
    def input_name; get_field("inputName", TypeConverters::String); end
    # @!attribute [r] input_volume_mul
    # @return [Numeric] <tt>inputVolumeMul</tt> field
    def input_volume_mul; get_field("inputVolumeMul", TypeConverters::Number); end
    # @!attribute [r] input_volume_db
    # @return [Numeric] <tt>inputVolumeDb</tt> field
    def input_volume_db; get_field("inputVolumeDb", TypeConverters::Number); end
  end
  # An instance of <tt>InputAudioBalanceChanged</tt> event.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#inputaudiobalancechanged
  class InputAudioBalanceChanged < Event
    TYPE = "InputAudioBalanceChanged"
    CLASSES_BY_TYPE[TYPE] = self
    # @!attribute [r] input_name
    # @return [String] <tt>inputName</tt> field
    def input_name; get_field("inputName", TypeConverters::String); end
    # @!attribute [r] input_audio_balance
    # @return [Numeric] <tt>inputAudioBalance</tt> field
    def input_audio_balance; get_field("inputAudioBalance", TypeConverters::Number); end
  end
  # An instance of <tt>InputAudioSyncOffsetChanged</tt> event.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#inputaudiosyncoffsetchanged
  class InputAudioSyncOffsetChanged < Event
    TYPE = "InputAudioSyncOffsetChanged"
    CLASSES_BY_TYPE[TYPE] = self
    # @!attribute [r] input_name
    # @return [String] <tt>inputName</tt> field
    def input_name; get_field("inputName", TypeConverters::String); end
    # @!attribute [r] input_audio_sync_offset
    # @return [Numeric] <tt>inputAudioSyncOffset</tt> field
    def input_audio_sync_offset; get_field("inputAudioSyncOffset", TypeConverters::Number); end
  end
  # An instance of <tt>InputAudioTracksChanged</tt> event.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#inputaudiotrackschanged
  class InputAudioTracksChanged < Event
    TYPE = "InputAudioTracksChanged"
    CLASSES_BY_TYPE[TYPE] = self
    # @!attribute [r] input_name
    # @return [String] <tt>inputName</tt> field
    def input_name; get_field("inputName", TypeConverters::String); end
    # @!attribute [r] input_audio_tracks
    # @return [Hash] <tt>inputAudioTracks</tt> field
    def input_audio_tracks; get_field("inputAudioTracks", TypeConverters::Object); end
  end
  # An instance of <tt>InputAudioMonitorTypeChanged</tt> event.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#inputaudiomonitortypechanged
  class InputAudioMonitorTypeChanged < Event
    TYPE = "InputAudioMonitorTypeChanged"
    CLASSES_BY_TYPE[TYPE] = self
    # @!attribute [r] input_name
    # @return [String] <tt>inputName</tt> field
    def input_name; get_field("inputName", TypeConverters::String); end
    # @!attribute [r] monitor_type
    # @return [String] <tt>monitorType</tt> field
    def monitor_type; get_field("monitorType", TypeConverters::String); end
  end
  # An instance of <tt>InputVolumeMeters</tt> event.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#inputvolumemeters
  class InputVolumeMeters < Event
    TYPE = "InputVolumeMeters"
    CLASSES_BY_TYPE[TYPE] = self
    # @!attribute [r] inputs
    # @return [Array<Hash>] <tt>inputs</tt> field
    def inputs; get_field("inputs", TypeConverters::Array[TypeConverters::Object]); end
  end
  # An instance of <tt>MediaInputPlaybackStarted</tt> event.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#mediainputplaybackstarted
  class MediaInputPlaybackStarted < Event
    TYPE = "MediaInputPlaybackStarted"
    CLASSES_BY_TYPE[TYPE] = self
    # @!attribute [r] input_name
    # @return [String] <tt>inputName</tt> field
    def input_name; get_field("inputName", TypeConverters::String); end
  end
  # An instance of <tt>MediaInputPlaybackEnded</tt> event.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#mediainputplaybackended
  class MediaInputPlaybackEnded < Event
    TYPE = "MediaInputPlaybackEnded"
    CLASSES_BY_TYPE[TYPE] = self
    # @!attribute [r] input_name
    # @return [String] <tt>inputName</tt> field
    def input_name; get_field("inputName", TypeConverters::String); end
  end
  # An instance of <tt>MediaInputActionTriggered</tt> event.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#mediainputactiontriggered
  class MediaInputActionTriggered < Event
    TYPE = "MediaInputActionTriggered"
    CLASSES_BY_TYPE[TYPE] = self
    # @!attribute [r] input_name
    # @return [String] <tt>inputName</tt> field
    def input_name; get_field("inputName", TypeConverters::String); end
    # @!attribute [r] media_action
    # @return [String] <tt>mediaAction</tt> field
    def media_action; get_field("mediaAction", TypeConverters::String); end
  end
  # An instance of <tt>StreamStateChanged</tt> event.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#streamstatechanged
  class StreamStateChanged < Event
    TYPE = "StreamStateChanged"
    CLASSES_BY_TYPE[TYPE] = self
    # @!attribute [r] output_active
    # @return [Boolean] <tt>outputActive</tt> field
    def output_active; get_field("outputActive", TypeConverters::Boolean); end
    # @!attribute [r] output_state
    # @return [String] <tt>outputState</tt> field
    def output_state; get_field("outputState", TypeConverters::String); end
  end
  # An instance of <tt>RecordStateChanged</tt> event.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#recordstatechanged
  class RecordStateChanged < Event
    TYPE = "RecordStateChanged"
    CLASSES_BY_TYPE[TYPE] = self
    # @!attribute [r] output_active
    # @return [Boolean] <tt>outputActive</tt> field
    def output_active; get_field("outputActive", TypeConverters::Boolean); end
    # @!attribute [r] output_state
    # @return [String] <tt>outputState</tt> field
    def output_state; get_field("outputState", TypeConverters::String); end
  end
  # An instance of <tt>ReplayBufferStateChanged</tt> event.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#replaybufferstatechanged
  class ReplayBufferStateChanged < Event
    TYPE = "ReplayBufferStateChanged"
    CLASSES_BY_TYPE[TYPE] = self
    # @!attribute [r] output_active
    # @return [Boolean] <tt>outputActive</tt> field
    def output_active; get_field("outputActive", TypeConverters::Boolean); end
    # @!attribute [r] output_state
    # @return [String] <tt>outputState</tt> field
    def output_state; get_field("outputState", TypeConverters::String); end
  end
  # An instance of <tt>VirtualcamStateChanged</tt> event.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#virtualcamstatechanged
  class VirtualcamStateChanged < Event
    TYPE = "VirtualcamStateChanged"
    CLASSES_BY_TYPE[TYPE] = self
    # @!attribute [r] output_active
    # @return [Boolean] <tt>outputActive</tt> field
    def output_active; get_field("outputActive", TypeConverters::Boolean); end
    # @!attribute [r] output_state
    # @return [String] <tt>outputState</tt> field
    def output_state; get_field("outputState", TypeConverters::String); end
  end
  # An instance of <tt>ReplayBufferSaved</tt> event.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#replaybuffersaved
  class ReplayBufferSaved < Event
    TYPE = "ReplayBufferSaved"
    CLASSES_BY_TYPE[TYPE] = self
    # @!attribute [r] saved_replay_path
    # @return [String] <tt>savedReplayPath</tt> field
    def saved_replay_path; get_field("savedReplayPath", TypeConverters::String); end
  end
  # An instance of <tt>SceneItemCreated</tt> event.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#sceneitemcreated
  class SceneItemCreated < Event
    TYPE = "SceneItemCreated"
    CLASSES_BY_TYPE[TYPE] = self
    # @!attribute [r] scene_name
    # @return [String] <tt>sceneName</tt> field
    def scene_name; get_field("sceneName", TypeConverters::String); end
    # @!attribute [r] source_name
    # @return [String] <tt>sourceName</tt> field
    def source_name; get_field("sourceName", TypeConverters::String); end
    # @!attribute [r] scene_item_id
    # @return [Numeric] <tt>sceneItemId</tt> field
    def scene_item_id; get_field("sceneItemId", TypeConverters::Number); end
    # @!attribute [r] scene_item_index
    # @return [Numeric] <tt>sceneItemIndex</tt> field
    def scene_item_index; get_field("sceneItemIndex", TypeConverters::Number); end
  end
  # An instance of <tt>SceneItemRemoved</tt> event.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#sceneitemremoved
  class SceneItemRemoved < Event
    TYPE = "SceneItemRemoved"
    CLASSES_BY_TYPE[TYPE] = self
    # @!attribute [r] scene_name
    # @return [String] <tt>sceneName</tt> field
    def scene_name; get_field("sceneName", TypeConverters::String); end
    # @!attribute [r] source_name
    # @return [String] <tt>sourceName</tt> field
    def source_name; get_field("sourceName", TypeConverters::String); end
    # @!attribute [r] scene_item_id
    # @return [Numeric] <tt>sceneItemId</tt> field
    def scene_item_id; get_field("sceneItemId", TypeConverters::Number); end
  end
  # An instance of <tt>SceneItemListReindexed</tt> event.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#sceneitemlistreindexed
  class SceneItemListReindexed < Event
    TYPE = "SceneItemListReindexed"
    CLASSES_BY_TYPE[TYPE] = self
    # @!attribute [r] scene_name
    # @return [String] <tt>sceneName</tt> field
    def scene_name; get_field("sceneName", TypeConverters::String); end
    # @!attribute [r] scene_items
    # @return [Array<Hash>] <tt>sceneItems</tt> field
    def scene_items; get_field("sceneItems", TypeConverters::Array[TypeConverters::Object]); end
  end
  # An instance of <tt>SceneItemEnableStateChanged</tt> event.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#sceneitemenablestatechanged
  class SceneItemEnableStateChanged < Event
    TYPE = "SceneItemEnableStateChanged"
    CLASSES_BY_TYPE[TYPE] = self
    # @!attribute [r] scene_name
    # @return [String] <tt>sceneName</tt> field
    def scene_name; get_field("sceneName", TypeConverters::String); end
    # @!attribute [r] scene_item_id
    # @return [Numeric] <tt>sceneItemId</tt> field
    def scene_item_id; get_field("sceneItemId", TypeConverters::Number); end
    # @!attribute [r] scene_item_enabled
    # @return [Boolean] <tt>sceneItemEnabled</tt> field
    def scene_item_enabled; get_field("sceneItemEnabled", TypeConverters::Boolean); end
  end
  # An instance of <tt>SceneItemLockStateChanged</tt> event.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#sceneitemlockstatechanged
  class SceneItemLockStateChanged < Event
    TYPE = "SceneItemLockStateChanged"
    CLASSES_BY_TYPE[TYPE] = self
    # @!attribute [r] scene_name
    # @return [String] <tt>sceneName</tt> field
    def scene_name; get_field("sceneName", TypeConverters::String); end
    # @!attribute [r] scene_item_id
    # @return [Numeric] <tt>sceneItemId</tt> field
    def scene_item_id; get_field("sceneItemId", TypeConverters::Number); end
    # @!attribute [r] scene_item_locked
    # @return [Boolean] <tt>sceneItemLocked</tt> field
    def scene_item_locked; get_field("sceneItemLocked", TypeConverters::Boolean); end
  end
  # An instance of <tt>SceneItemSelected</tt> event.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#sceneitemselected
  class SceneItemSelected < Event
    TYPE = "SceneItemSelected"
    CLASSES_BY_TYPE[TYPE] = self
    # @!attribute [r] scene_name
    # @return [String] <tt>sceneName</tt> field
    def scene_name; get_field("sceneName", TypeConverters::String); end
    # @!attribute [r] scene_item_id
    # @return [Numeric] <tt>sceneItemId</tt> field
    def scene_item_id; get_field("sceneItemId", TypeConverters::Number); end
  end
  # An instance of <tt>SceneItemTransformChanged</tt> event.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#sceneitemtransformchanged
  class SceneItemTransformChanged < Event
    TYPE = "SceneItemTransformChanged"
    CLASSES_BY_TYPE[TYPE] = self
    # @!attribute [r] scene_name
    # @return [String] <tt>sceneName</tt> field
    def scene_name; get_field("sceneName", TypeConverters::String); end
    # @!attribute [r] scene_item_id
    # @return [Numeric] <tt>sceneItemId</tt> field
    def scene_item_id; get_field("sceneItemId", TypeConverters::Number); end
    # @!attribute [r] scene_item_transform
    # @return [Hash] <tt>sceneItemTransform</tt> field
    def scene_item_transform; get_field("sceneItemTransform", TypeConverters::Object); end
  end
  # An instance of <tt>SceneCreated</tt> event.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#scenecreated
  class SceneCreated < Event
    TYPE = "SceneCreated"
    CLASSES_BY_TYPE[TYPE] = self
    # @!attribute [r] scene_name
    # @return [String] <tt>sceneName</tt> field
    def scene_name; get_field("sceneName", TypeConverters::String); end
    # @!attribute [r] is_group
    # @return [Boolean] <tt>isGroup</tt> field
    def is_group; get_field("isGroup", TypeConverters::Boolean); end
  end
  # An instance of <tt>SceneRemoved</tt> event.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#sceneremoved
  class SceneRemoved < Event
    TYPE = "SceneRemoved"
    CLASSES_BY_TYPE[TYPE] = self
    # @!attribute [r] scene_name
    # @return [String] <tt>sceneName</tt> field
    def scene_name; get_field("sceneName", TypeConverters::String); end
    # @!attribute [r] is_group
    # @return [Boolean] <tt>isGroup</tt> field
    def is_group; get_field("isGroup", TypeConverters::Boolean); end
  end
  # An instance of <tt>SceneNameChanged</tt> event.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#scenenamechanged
  class SceneNameChanged < Event
    TYPE = "SceneNameChanged"
    CLASSES_BY_TYPE[TYPE] = self
    # @!attribute [r] old_scene_name
    # @return [String] <tt>oldSceneName</tt> field
    def old_scene_name; get_field("oldSceneName", TypeConverters::String); end
    # @!attribute [r] scene_name
    # @return [String] <tt>sceneName</tt> field
    def scene_name; get_field("sceneName", TypeConverters::String); end
  end
  # An instance of <tt>CurrentProgramSceneChanged</tt> event.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#currentprogramscenechanged
  class CurrentProgramSceneChanged < Event
    TYPE = "CurrentProgramSceneChanged"
    CLASSES_BY_TYPE[TYPE] = self
    # @!attribute [r] scene_name
    # @return [String] <tt>sceneName</tt> field
    def scene_name; get_field("sceneName", TypeConverters::String); end
  end
  # An instance of <tt>CurrentPreviewSceneChanged</tt> event.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#currentpreviewscenechanged
  class CurrentPreviewSceneChanged < Event
    TYPE = "CurrentPreviewSceneChanged"
    CLASSES_BY_TYPE[TYPE] = self
    # @!attribute [r] scene_name
    # @return [String] <tt>sceneName</tt> field
    def scene_name; get_field("sceneName", TypeConverters::String); end
  end
  # An instance of <tt>SceneListChanged</tt> event.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#scenelistchanged
  class SceneListChanged < Event
    TYPE = "SceneListChanged"
    CLASSES_BY_TYPE[TYPE] = self
    # @!attribute [r] scenes
    # @return [Array<Hash>] <tt>scenes</tt> field
    def scenes; get_field("scenes", TypeConverters::Array[TypeConverters::Object]); end
  end
  # An instance of <tt>CurrentSceneTransitionChanged</tt> event.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#currentscenetransitionchanged
  class CurrentSceneTransitionChanged < Event
    TYPE = "CurrentSceneTransitionChanged"
    CLASSES_BY_TYPE[TYPE] = self
    # @!attribute [r] transition_name
    # @return [String] <tt>transitionName</tt> field
    def transition_name; get_field("transitionName", TypeConverters::String); end
  end
  # An instance of <tt>CurrentSceneTransitionDurationChanged</tt> event.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#currentscenetransitiondurationchanged
  class CurrentSceneTransitionDurationChanged < Event
    TYPE = "CurrentSceneTransitionDurationChanged"
    CLASSES_BY_TYPE[TYPE] = self
    # @!attribute [r] transition_duration
    # @return [Numeric] <tt>transitionDuration</tt> field
    def transition_duration; get_field("transitionDuration", TypeConverters::Number); end
  end
  # An instance of <tt>SceneTransitionStarted</tt> event.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#scenetransitionstarted
  class SceneTransitionStarted < Event
    TYPE = "SceneTransitionStarted"
    CLASSES_BY_TYPE[TYPE] = self
    # @!attribute [r] transition_name
    # @return [String] <tt>transitionName</tt> field
    def transition_name; get_field("transitionName", TypeConverters::String); end
  end
  # An instance of <tt>SceneTransitionEnded</tt> event.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#scenetransitionended
  class SceneTransitionEnded < Event
    TYPE = "SceneTransitionEnded"
    CLASSES_BY_TYPE[TYPE] = self
    # @!attribute [r] transition_name
    # @return [String] <tt>transitionName</tt> field
    def transition_name; get_field("transitionName", TypeConverters::String); end
  end
  # An instance of <tt>SceneTransitionVideoEnded</tt> event.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#scenetransitionvideoended
  class SceneTransitionVideoEnded < Event
    TYPE = "SceneTransitionVideoEnded"
    CLASSES_BY_TYPE[TYPE] = self
    # @!attribute [r] transition_name
    # @return [String] <tt>transitionName</tt> field
    def transition_name; get_field("transitionName", TypeConverters::String); end
  end
  # An instance of <tt>StudioModeStateChanged</tt> event.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#studiomodestatechanged
  class StudioModeStateChanged < Event
    TYPE = "StudioModeStateChanged"
    CLASSES_BY_TYPE[TYPE] = self
    # @!attribute [r] studio_mode_enabled
    # @return [Boolean] <tt>studioModeEnabled</tt> field
    def studio_mode_enabled; get_field("studioModeEnabled", TypeConverters::Boolean); end
  end
  # An instance of <tt>VendorEvent</tt> event.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#vendorevent
  class VendorEvent < Event
    TYPE = "VendorEvent"
    CLASSES_BY_TYPE[TYPE] = self
    # @!attribute [r] vendor_name
    # @return [String] <tt>vendorName</tt> field
    def vendor_name; get_field("vendorName", TypeConverters::String); end
    # @!attribute [r] event_type
    # @return [String] <tt>eventType</tt> field
    def event_type; get_field("eventType", TypeConverters::String); end
    # @!attribute [r] event_data
    # @return [Hash] <tt>eventData</tt> field
    def event_data; get_field("eventData", TypeConverters::Object); end
  end
end  # module Events
module Requests
  # An instance of <tt>GetPersistentData</tt> request.
  # @see Mixins::Request#get_persistent_data
  # @see Responses::GetPersistentData
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getpersistentdata
  class GetPersistentData < Request
    TYPE = "GetPersistentData"
  end
  # An instance of <tt>SetPersistentData</tt> request.
  # @see Mixins::Request#set_persistent_data
  # @see Responses::SetPersistentData
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setpersistentdata
  class SetPersistentData < Request
    TYPE = "SetPersistentData"
  end
  # An instance of <tt>GetSceneCollectionList</tt> request.
  # @see Mixins::Request#get_scene_collection_list
  # @see Responses::GetSceneCollectionList
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getscenecollectionlist
  class GetSceneCollectionList < Request
    TYPE = "GetSceneCollectionList"
  end
  # An instance of <tt>SetCurrentSceneCollection</tt> request.
  # @see Mixins::Request#set_current_scene_collection
  # @see Responses::SetCurrentSceneCollection
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setcurrentscenecollection
  class SetCurrentSceneCollection < Request
    TYPE = "SetCurrentSceneCollection"
  end
  # An instance of <tt>CreateSceneCollection</tt> request.
  # @see Mixins::Request#create_scene_collection
  # @see Responses::CreateSceneCollection
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#createscenecollection
  class CreateSceneCollection < Request
    TYPE = "CreateSceneCollection"
  end
  # An instance of <tt>GetProfileList</tt> request.
  # @see Mixins::Request#get_profile_list
  # @see Responses::GetProfileList
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getprofilelist
  class GetProfileList < Request
    TYPE = "GetProfileList"
  end
  # An instance of <tt>SetCurrentProfile</tt> request.
  # @see Mixins::Request#set_current_profile
  # @see Responses::SetCurrentProfile
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setcurrentprofile
  class SetCurrentProfile < Request
    TYPE = "SetCurrentProfile"
  end
  # An instance of <tt>CreateProfile</tt> request.
  # @see Mixins::Request#create_profile
  # @see Responses::CreateProfile
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#createprofile
  class CreateProfile < Request
    TYPE = "CreateProfile"
  end
  # An instance of <tt>RemoveProfile</tt> request.
  # @see Mixins::Request#remove_profile
  # @see Responses::RemoveProfile
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#removeprofile
  class RemoveProfile < Request
    TYPE = "RemoveProfile"
  end
  # An instance of <tt>GetProfileParameter</tt> request.
  # @see Mixins::Request#get_profile_parameter
  # @see Responses::GetProfileParameter
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getprofileparameter
  class GetProfileParameter < Request
    TYPE = "GetProfileParameter"
  end
  # An instance of <tt>SetProfileParameter</tt> request.
  # @see Mixins::Request#set_profile_parameter
  # @see Responses::SetProfileParameter
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setprofileparameter
  class SetProfileParameter < Request
    TYPE = "SetProfileParameter"
  end
  # An instance of <tt>GetVideoSettings</tt> request.
  # @see Mixins::Request#get_video_settings
  # @see Responses::GetVideoSettings
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getvideosettings
  class GetVideoSettings < Request
    TYPE = "GetVideoSettings"
  end
  # An instance of <tt>SetVideoSettings</tt> request.
  # @see Mixins::Request#set_video_settings
  # @see Responses::SetVideoSettings
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setvideosettings
  class SetVideoSettings < Request
    TYPE = "SetVideoSettings"
  end
  # An instance of <tt>GetStreamServiceSettings</tt> request.
  # @see Mixins::Request#get_stream_service_settings
  # @see Responses::GetStreamServiceSettings
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getstreamservicesettings
  class GetStreamServiceSettings < Request
    TYPE = "GetStreamServiceSettings"
  end
  # An instance of <tt>SetStreamServiceSettings</tt> request.
  # @see Mixins::Request#set_stream_service_settings
  # @see Responses::SetStreamServiceSettings
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setstreamservicesettings
  class SetStreamServiceSettings < Request
    TYPE = "SetStreamServiceSettings"
  end
  # An instance of <tt>GetRecordDirectory</tt> request.
  # @see Mixins::Request#get_record_directory
  # @see Responses::GetRecordDirectory
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getrecorddirectory
  class GetRecordDirectory < Request
    TYPE = "GetRecordDirectory"
  end
  # An instance of <tt>GetSourceFilterList</tt> request.
  # @see Mixins::Request#get_source_filter_list
  # @see Responses::GetSourceFilterList
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getsourcefilterlist
  class GetSourceFilterList < Request
    TYPE = "GetSourceFilterList"
  end
  # An instance of <tt>GetSourceFilterDefaultSettings</tt> request.
  # @see Mixins::Request#get_source_filter_default_settings
  # @see Responses::GetSourceFilterDefaultSettings
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getsourcefilterdefaultsettings
  class GetSourceFilterDefaultSettings < Request
    TYPE = "GetSourceFilterDefaultSettings"
  end
  # An instance of <tt>CreateSourceFilter</tt> request.
  # @see Mixins::Request#create_source_filter
  # @see Responses::CreateSourceFilter
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#createsourcefilter
  class CreateSourceFilter < Request
    TYPE = "CreateSourceFilter"
  end
  # An instance of <tt>RemoveSourceFilter</tt> request.
  # @see Mixins::Request#remove_source_filter
  # @see Responses::RemoveSourceFilter
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#removesourcefilter
  class RemoveSourceFilter < Request
    TYPE = "RemoveSourceFilter"
  end
  # An instance of <tt>SetSourceFilterName</tt> request.
  # @see Mixins::Request#set_source_filter_name
  # @see Responses::SetSourceFilterName
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setsourcefiltername
  class SetSourceFilterName < Request
    TYPE = "SetSourceFilterName"
  end
  # An instance of <tt>GetSourceFilter</tt> request.
  # @see Mixins::Request#get_source_filter
  # @see Responses::GetSourceFilter
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getsourcefilter
  class GetSourceFilter < Request
    TYPE = "GetSourceFilter"
  end
  # An instance of <tt>SetSourceFilterIndex</tt> request.
  # @see Mixins::Request#set_source_filter_index
  # @see Responses::SetSourceFilterIndex
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setsourcefilterindex
  class SetSourceFilterIndex < Request
    TYPE = "SetSourceFilterIndex"
  end
  # An instance of <tt>SetSourceFilterSettings</tt> request.
  # @see Mixins::Request#set_source_filter_settings
  # @see Responses::SetSourceFilterSettings
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setsourcefiltersettings
  class SetSourceFilterSettings < Request
    TYPE = "SetSourceFilterSettings"
  end
  # An instance of <tt>SetSourceFilterEnabled</tt> request.
  # @see Mixins::Request#set_source_filter_enabled
  # @see Responses::SetSourceFilterEnabled
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setsourcefilterenabled
  class SetSourceFilterEnabled < Request
    TYPE = "SetSourceFilterEnabled"
  end
  # An instance of <tt>GetVersion</tt> request.
  # @see Mixins::Request#get_version
  # @see Responses::GetVersion
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getversion
  class GetVersion < Request
    TYPE = "GetVersion"
  end
  # An instance of <tt>GetStats</tt> request.
  # @see Mixins::Request#get_stats
  # @see Responses::GetStats
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getstats
  class GetStats < Request
    TYPE = "GetStats"
  end
  # An instance of <tt>BroadcastCustomEvent</tt> request.
  # @see Mixins::Request#broadcast_custom_event
  # @see Responses::BroadcastCustomEvent
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#broadcastcustomevent
  class BroadcastCustomEvent < Request
    TYPE = "BroadcastCustomEvent"
  end
  # An instance of <tt>CallVendorRequest</tt> request.
  # @see Mixins::Request#call_vendor_request
  # @see Responses::CallVendorRequest
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#callvendorrequest
  class CallVendorRequest < Request
    TYPE = "CallVendorRequest"
  end
  # An instance of <tt>GetHotkeyList</tt> request.
  # @see Mixins::Request#get_hotkey_list
  # @see Responses::GetHotkeyList
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#gethotkeylist
  class GetHotkeyList < Request
    TYPE = "GetHotkeyList"
  end
  # An instance of <tt>TriggerHotkeyByName</tt> request.
  # @see Mixins::Request#trigger_hotkey_by_name
  # @see Responses::TriggerHotkeyByName
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#triggerhotkeybyname
  class TriggerHotkeyByName < Request
    TYPE = "TriggerHotkeyByName"
  end
  # An instance of <tt>TriggerHotkeyByKeySequence</tt> request.
  # @see Mixins::Request#trigger_hotkey_by_key_sequence
  # @see Responses::TriggerHotkeyByKeySequence
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#triggerhotkeybykeysequence
  class TriggerHotkeyByKeySequence < Request
    TYPE = "TriggerHotkeyByKeySequence"
  end
  # An instance of <tt>Sleep</tt> request.
  # @see Mixins::Request#sleep
  # @see Responses::Sleep
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#sleep
  class Sleep < Request
    TYPE = "Sleep"
  end
  # An instance of <tt>GetInputList</tt> request.
  # @see Mixins::Request#get_input_list
  # @see Responses::GetInputList
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getinputlist
  class GetInputList < Request
    TYPE = "GetInputList"
  end
  # An instance of <tt>GetInputKindList</tt> request.
  # @see Mixins::Request#get_input_kind_list
  # @see Responses::GetInputKindList
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getinputkindlist
  class GetInputKindList < Request
    TYPE = "GetInputKindList"
  end
  # An instance of <tt>GetSpecialInputs</tt> request.
  # @see Mixins::Request#get_special_inputs
  # @see Responses::GetSpecialInputs
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getspecialinputs
  class GetSpecialInputs < Request
    TYPE = "GetSpecialInputs"
  end
  # An instance of <tt>CreateInput</tt> request.
  # @see Mixins::Request#create_input
  # @see Responses::CreateInput
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#createinput
  class CreateInput < Request
    TYPE = "CreateInput"
  end
  # An instance of <tt>RemoveInput</tt> request.
  # @see Mixins::Request#remove_input
  # @see Responses::RemoveInput
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#removeinput
  class RemoveInput < Request
    TYPE = "RemoveInput"
  end
  # An instance of <tt>SetInputName</tt> request.
  # @see Mixins::Request#set_input_name
  # @see Responses::SetInputName
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setinputname
  class SetInputName < Request
    TYPE = "SetInputName"
  end
  # An instance of <tt>GetInputDefaultSettings</tt> request.
  # @see Mixins::Request#get_input_default_settings
  # @see Responses::GetInputDefaultSettings
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getinputdefaultsettings
  class GetInputDefaultSettings < Request
    TYPE = "GetInputDefaultSettings"
  end
  # An instance of <tt>GetInputSettings</tt> request.
  # @see Mixins::Request#get_input_settings
  # @see Responses::GetInputSettings
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getinputsettings
  class GetInputSettings < Request
    TYPE = "GetInputSettings"
  end
  # An instance of <tt>SetInputSettings</tt> request.
  # @see Mixins::Request#set_input_settings
  # @see Responses::SetInputSettings
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setinputsettings
  class SetInputSettings < Request
    TYPE = "SetInputSettings"
  end
  # An instance of <tt>GetInputMute</tt> request.
  # @see Mixins::Request#get_input_mute
  # @see Responses::GetInputMute
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getinputmute
  class GetInputMute < Request
    TYPE = "GetInputMute"
  end
  # An instance of <tt>SetInputMute</tt> request.
  # @see Mixins::Request#set_input_mute
  # @see Responses::SetInputMute
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setinputmute
  class SetInputMute < Request
    TYPE = "SetInputMute"
  end
  # An instance of <tt>ToggleInputMute</tt> request.
  # @see Mixins::Request#toggle_input_mute
  # @see Responses::ToggleInputMute
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#toggleinputmute
  class ToggleInputMute < Request
    TYPE = "ToggleInputMute"
  end
  # An instance of <tt>GetInputVolume</tt> request.
  # @see Mixins::Request#get_input_volume
  # @see Responses::GetInputVolume
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getinputvolume
  class GetInputVolume < Request
    TYPE = "GetInputVolume"
  end
  # An instance of <tt>SetInputVolume</tt> request.
  # @see Mixins::Request#set_input_volume
  # @see Responses::SetInputVolume
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setinputvolume
  class SetInputVolume < Request
    TYPE = "SetInputVolume"
  end
  # An instance of <tt>GetInputAudioBalance</tt> request.
  # @see Mixins::Request#get_input_audio_balance
  # @see Responses::GetInputAudioBalance
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getinputaudiobalance
  class GetInputAudioBalance < Request
    TYPE = "GetInputAudioBalance"
  end
  # An instance of <tt>SetInputAudioBalance</tt> request.
  # @see Mixins::Request#set_input_audio_balance
  # @see Responses::SetInputAudioBalance
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setinputaudiobalance
  class SetInputAudioBalance < Request
    TYPE = "SetInputAudioBalance"
  end
  # An instance of <tt>GetInputAudioSyncOffset</tt> request.
  # @see Mixins::Request#get_input_audio_sync_offset
  # @see Responses::GetInputAudioSyncOffset
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getinputaudiosyncoffset
  class GetInputAudioSyncOffset < Request
    TYPE = "GetInputAudioSyncOffset"
  end
  # An instance of <tt>SetInputAudioSyncOffset</tt> request.
  # @see Mixins::Request#set_input_audio_sync_offset
  # @see Responses::SetInputAudioSyncOffset
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setinputaudiosyncoffset
  class SetInputAudioSyncOffset < Request
    TYPE = "SetInputAudioSyncOffset"
  end
  # An instance of <tt>GetInputAudioMonitorType</tt> request.
  # @see Mixins::Request#get_input_audio_monitor_type
  # @see Responses::GetInputAudioMonitorType
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getinputaudiomonitortype
  class GetInputAudioMonitorType < Request
    TYPE = "GetInputAudioMonitorType"
  end
  # An instance of <tt>SetInputAudioMonitorType</tt> request.
  # @see Mixins::Request#set_input_audio_monitor_type
  # @see Responses::SetInputAudioMonitorType
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setinputaudiomonitortype
  class SetInputAudioMonitorType < Request
    TYPE = "SetInputAudioMonitorType"
  end
  # An instance of <tt>GetInputAudioTracks</tt> request.
  # @see Mixins::Request#get_input_audio_tracks
  # @see Responses::GetInputAudioTracks
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getinputaudiotracks
  class GetInputAudioTracks < Request
    TYPE = "GetInputAudioTracks"
  end
  # An instance of <tt>SetInputAudioTracks</tt> request.
  # @see Mixins::Request#set_input_audio_tracks
  # @see Responses::SetInputAudioTracks
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setinputaudiotracks
  class SetInputAudioTracks < Request
    TYPE = "SetInputAudioTracks"
  end
  # An instance of <tt>GetInputPropertiesListPropertyItems</tt> request.
  # @see Mixins::Request#get_input_properties_list_property_items
  # @see Responses::GetInputPropertiesListPropertyItems
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getinputpropertieslistpropertyitems
  class GetInputPropertiesListPropertyItems < Request
    TYPE = "GetInputPropertiesListPropertyItems"
  end
  # An instance of <tt>PressInputPropertiesButton</tt> request.
  # @see Mixins::Request#press_input_properties_button
  # @see Responses::PressInputPropertiesButton
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#pressinputpropertiesbutton
  class PressInputPropertiesButton < Request
    TYPE = "PressInputPropertiesButton"
  end
  # An instance of <tt>GetMediaInputStatus</tt> request.
  # @see Mixins::Request#get_media_input_status
  # @see Responses::GetMediaInputStatus
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getmediainputstatus
  class GetMediaInputStatus < Request
    TYPE = "GetMediaInputStatus"
  end
  # An instance of <tt>SetMediaInputCursor</tt> request.
  # @see Mixins::Request#set_media_input_cursor
  # @see Responses::SetMediaInputCursor
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setmediainputcursor
  class SetMediaInputCursor < Request
    TYPE = "SetMediaInputCursor"
  end
  # An instance of <tt>OffsetMediaInputCursor</tt> request.
  # @see Mixins::Request#offset_media_input_cursor
  # @see Responses::OffsetMediaInputCursor
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#offsetmediainputcursor
  class OffsetMediaInputCursor < Request
    TYPE = "OffsetMediaInputCursor"
  end
  # An instance of <tt>TriggerMediaInputAction</tt> request.
  # @see Mixins::Request#trigger_media_input_action
  # @see Responses::TriggerMediaInputAction
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#triggermediainputaction
  class TriggerMediaInputAction < Request
    TYPE = "TriggerMediaInputAction"
  end
  # An instance of <tt>GetVirtualCamStatus</tt> request.
  # @see Mixins::Request#get_virtual_cam_status
  # @see Responses::GetVirtualCamStatus
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getvirtualcamstatus
  class GetVirtualCamStatus < Request
    TYPE = "GetVirtualCamStatus"
  end
  # An instance of <tt>ToggleVirtualCam</tt> request.
  # @see Mixins::Request#toggle_virtual_cam
  # @see Responses::ToggleVirtualCam
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#togglevirtualcam
  class ToggleVirtualCam < Request
    TYPE = "ToggleVirtualCam"
  end
  # An instance of <tt>StartVirtualCam</tt> request.
  # @see Mixins::Request#start_virtual_cam
  # @see Responses::StartVirtualCam
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#startvirtualcam
  class StartVirtualCam < Request
    TYPE = "StartVirtualCam"
  end
  # An instance of <tt>StopVirtualCam</tt> request.
  # @see Mixins::Request#stop_virtual_cam
  # @see Responses::StopVirtualCam
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#stopvirtualcam
  class StopVirtualCam < Request
    TYPE = "StopVirtualCam"
  end
  # An instance of <tt>GetReplayBufferStatus</tt> request.
  # @see Mixins::Request#get_replay_buffer_status
  # @see Responses::GetReplayBufferStatus
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getreplaybufferstatus
  class GetReplayBufferStatus < Request
    TYPE = "GetReplayBufferStatus"
  end
  # An instance of <tt>ToggleReplayBuffer</tt> request.
  # @see Mixins::Request#toggle_replay_buffer
  # @see Responses::ToggleReplayBuffer
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#togglereplaybuffer
  class ToggleReplayBuffer < Request
    TYPE = "ToggleReplayBuffer"
  end
  # An instance of <tt>StartReplayBuffer</tt> request.
  # @see Mixins::Request#start_replay_buffer
  # @see Responses::StartReplayBuffer
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#startreplaybuffer
  class StartReplayBuffer < Request
    TYPE = "StartReplayBuffer"
  end
  # An instance of <tt>StopReplayBuffer</tt> request.
  # @see Mixins::Request#stop_replay_buffer
  # @see Responses::StopReplayBuffer
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#stopreplaybuffer
  class StopReplayBuffer < Request
    TYPE = "StopReplayBuffer"
  end
  # An instance of <tt>SaveReplayBuffer</tt> request.
  # @see Mixins::Request#save_replay_buffer
  # @see Responses::SaveReplayBuffer
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#savereplaybuffer
  class SaveReplayBuffer < Request
    TYPE = "SaveReplayBuffer"
  end
  # An instance of <tt>GetLastReplayBufferReplay</tt> request.
  # @see Mixins::Request#get_last_replay_buffer_replay
  # @see Responses::GetLastReplayBufferReplay
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getlastreplaybufferreplay
  class GetLastReplayBufferReplay < Request
    TYPE = "GetLastReplayBufferReplay"
  end
  # An instance of <tt>GetRecordStatus</tt> request.
  # @see Mixins::Request#get_record_status
  # @see Responses::GetRecordStatus
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getrecordstatus
  class GetRecordStatus < Request
    TYPE = "GetRecordStatus"
  end
  # An instance of <tt>ToggleRecord</tt> request.
  # @see Mixins::Request#toggle_record
  # @see Responses::ToggleRecord
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#togglerecord
  class ToggleRecord < Request
    TYPE = "ToggleRecord"
  end
  # An instance of <tt>StartRecord</tt> request.
  # @see Mixins::Request#start_record
  # @see Responses::StartRecord
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#startrecord
  class StartRecord < Request
    TYPE = "StartRecord"
  end
  # An instance of <tt>StopRecord</tt> request.
  # @see Mixins::Request#stop_record
  # @see Responses::StopRecord
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#stoprecord
  class StopRecord < Request
    TYPE = "StopRecord"
  end
  # An instance of <tt>ToggleRecordPause</tt> request.
  # @see Mixins::Request#toggle_record_pause
  # @see Responses::ToggleRecordPause
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#togglerecordpause
  class ToggleRecordPause < Request
    TYPE = "ToggleRecordPause"
  end
  # An instance of <tt>PauseRecord</tt> request.
  # @see Mixins::Request#pause_record
  # @see Responses::PauseRecord
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#pauserecord
  class PauseRecord < Request
    TYPE = "PauseRecord"
  end
  # An instance of <tt>ResumeRecord</tt> request.
  # @see Mixins::Request#resume_record
  # @see Responses::ResumeRecord
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#resumerecord
  class ResumeRecord < Request
    TYPE = "ResumeRecord"
  end
  # An instance of <tt>GetSceneItemList</tt> request.
  # @see Mixins::Request#get_scene_item_list
  # @see Responses::GetSceneItemList
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getsceneitemlist
  class GetSceneItemList < Request
    TYPE = "GetSceneItemList"
  end
  # An instance of <tt>GetGroupItemList</tt> request.
  # @see Mixins::Request#get_group_item_list
  # @see Responses::GetGroupItemList
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getgroupitemlist
  class GetGroupItemList < Request
    TYPE = "GetGroupItemList"
  end
  # An instance of <tt>GetSceneItemId</tt> request.
  # @see Mixins::Request#get_scene_item_id
  # @see Responses::GetSceneItemId
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getsceneitemid
  class GetSceneItemId < Request
    TYPE = "GetSceneItemId"
  end
  # An instance of <tt>CreateSceneItem</tt> request.
  # @see Mixins::Request#create_scene_item
  # @see Responses::CreateSceneItem
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#createsceneitem
  class CreateSceneItem < Request
    TYPE = "CreateSceneItem"
  end
  # An instance of <tt>RemoveSceneItem</tt> request.
  # @see Mixins::Request#remove_scene_item
  # @see Responses::RemoveSceneItem
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#removesceneitem
  class RemoveSceneItem < Request
    TYPE = "RemoveSceneItem"
  end
  # An instance of <tt>DuplicateSceneItem</tt> request.
  # @see Mixins::Request#duplicate_scene_item
  # @see Responses::DuplicateSceneItem
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#duplicatesceneitem
  class DuplicateSceneItem < Request
    TYPE = "DuplicateSceneItem"
  end
  # An instance of <tt>GetSceneItemTransform</tt> request.
  # @see Mixins::Request#get_scene_item_transform
  # @see Responses::GetSceneItemTransform
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getsceneitemtransform
  class GetSceneItemTransform < Request
    TYPE = "GetSceneItemTransform"
  end
  # An instance of <tt>SetSceneItemTransform</tt> request.
  # @see Mixins::Request#set_scene_item_transform
  # @see Responses::SetSceneItemTransform
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setsceneitemtransform
  class SetSceneItemTransform < Request
    TYPE = "SetSceneItemTransform"
  end
  # An instance of <tt>GetSceneItemEnabled</tt> request.
  # @see Mixins::Request#get_scene_item_enabled
  # @see Responses::GetSceneItemEnabled
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getsceneitemenabled
  class GetSceneItemEnabled < Request
    TYPE = "GetSceneItemEnabled"
  end
  # An instance of <tt>SetSceneItemEnabled</tt> request.
  # @see Mixins::Request#set_scene_item_enabled
  # @see Responses::SetSceneItemEnabled
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setsceneitemenabled
  class SetSceneItemEnabled < Request
    TYPE = "SetSceneItemEnabled"
  end
  # An instance of <tt>GetSceneItemLocked</tt> request.
  # @see Mixins::Request#get_scene_item_locked
  # @see Responses::GetSceneItemLocked
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getsceneitemlocked
  class GetSceneItemLocked < Request
    TYPE = "GetSceneItemLocked"
  end
  # An instance of <tt>SetSceneItemLocked</tt> request.
  # @see Mixins::Request#set_scene_item_locked
  # @see Responses::SetSceneItemLocked
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setsceneitemlocked
  class SetSceneItemLocked < Request
    TYPE = "SetSceneItemLocked"
  end
  # An instance of <tt>GetSceneItemIndex</tt> request.
  # @see Mixins::Request#get_scene_item_index
  # @see Responses::GetSceneItemIndex
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getsceneitemindex
  class GetSceneItemIndex < Request
    TYPE = "GetSceneItemIndex"
  end
  # An instance of <tt>SetSceneItemIndex</tt> request.
  # @see Mixins::Request#set_scene_item_index
  # @see Responses::SetSceneItemIndex
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setsceneitemindex
  class SetSceneItemIndex < Request
    TYPE = "SetSceneItemIndex"
  end
  # An instance of <tt>GetSceneItemBlendMode</tt> request.
  # @see Mixins::Request#get_scene_item_blend_mode
  # @see Responses::GetSceneItemBlendMode
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getsceneitemblendmode
  class GetSceneItemBlendMode < Request
    TYPE = "GetSceneItemBlendMode"
  end
  # An instance of <tt>SetSceneItemBlendMode</tt> request.
  # @see Mixins::Request#set_scene_item_blend_mode
  # @see Responses::SetSceneItemBlendMode
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setsceneitemblendmode
  class SetSceneItemBlendMode < Request
    TYPE = "SetSceneItemBlendMode"
  end
  # An instance of <tt>GetSceneList</tt> request.
  # @see Mixins::Request#get_scene_list
  # @see Responses::GetSceneList
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getscenelist
  class GetSceneList < Request
    TYPE = "GetSceneList"
  end
  # An instance of <tt>GetGroupList</tt> request.
  # @see Mixins::Request#get_group_list
  # @see Responses::GetGroupList
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getgrouplist
  class GetGroupList < Request
    TYPE = "GetGroupList"
  end
  # An instance of <tt>GetCurrentProgramScene</tt> request.
  # @see Mixins::Request#get_current_program_scene
  # @see Responses::GetCurrentProgramScene
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getcurrentprogramscene
  class GetCurrentProgramScene < Request
    TYPE = "GetCurrentProgramScene"
  end
  # An instance of <tt>SetCurrentProgramScene</tt> request.
  # @see Mixins::Request#set_current_program_scene
  # @see Responses::SetCurrentProgramScene
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setcurrentprogramscene
  class SetCurrentProgramScene < Request
    TYPE = "SetCurrentProgramScene"
  end
  # An instance of <tt>GetCurrentPreviewScene</tt> request.
  # @see Mixins::Request#get_current_preview_scene
  # @see Responses::GetCurrentPreviewScene
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getcurrentpreviewscene
  class GetCurrentPreviewScene < Request
    TYPE = "GetCurrentPreviewScene"
  end
  # An instance of <tt>SetCurrentPreviewScene</tt> request.
  # @see Mixins::Request#set_current_preview_scene
  # @see Responses::SetCurrentPreviewScene
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setcurrentpreviewscene
  class SetCurrentPreviewScene < Request
    TYPE = "SetCurrentPreviewScene"
  end
  # An instance of <tt>CreateScene</tt> request.
  # @see Mixins::Request#create_scene
  # @see Responses::CreateScene
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#createscene
  class CreateScene < Request
    TYPE = "CreateScene"
  end
  # An instance of <tt>RemoveScene</tt> request.
  # @see Mixins::Request#remove_scene
  # @see Responses::RemoveScene
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#removescene
  class RemoveScene < Request
    TYPE = "RemoveScene"
  end
  # An instance of <tt>SetSceneName</tt> request.
  # @see Mixins::Request#set_scene_name
  # @see Responses::SetSceneName
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setscenename
  class SetSceneName < Request
    TYPE = "SetSceneName"
  end
  # An instance of <tt>GetSceneSceneTransitionOverride</tt> request.
  # @see Mixins::Request#get_scene_scene_transition_override
  # @see Responses::GetSceneSceneTransitionOverride
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getscenescenetransitionoverride
  class GetSceneSceneTransitionOverride < Request
    TYPE = "GetSceneSceneTransitionOverride"
  end
  # An instance of <tt>SetSceneSceneTransitionOverride</tt> request.
  # @see Mixins::Request#set_scene_scene_transition_override
  # @see Responses::SetSceneSceneTransitionOverride
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setscenescenetransitionoverride
  class SetSceneSceneTransitionOverride < Request
    TYPE = "SetSceneSceneTransitionOverride"
  end
  # An instance of <tt>GetSourceActive</tt> request.
  # @see Mixins::Request#get_source_active
  # @see Responses::GetSourceActive
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getsourceactive
  class GetSourceActive < Request
    TYPE = "GetSourceActive"
  end
  # An instance of <tt>GetSourceScreenshot</tt> request.
  # @see Mixins::Request#get_source_screenshot
  # @see Responses::GetSourceScreenshot
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getsourcescreenshot
  class GetSourceScreenshot < Request
    TYPE = "GetSourceScreenshot"
  end
  # An instance of <tt>SaveSourceScreenshot</tt> request.
  # @see Mixins::Request#save_source_screenshot
  # @see Responses::SaveSourceScreenshot
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#savesourcescreenshot
  class SaveSourceScreenshot < Request
    TYPE = "SaveSourceScreenshot"
  end
  # An instance of <tt>GetStreamStatus</tt> request.
  # @see Mixins::Request#get_stream_status
  # @see Responses::GetStreamStatus
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getstreamstatus
  class GetStreamStatus < Request
    TYPE = "GetStreamStatus"
  end
  # An instance of <tt>ToggleStream</tt> request.
  # @see Mixins::Request#toggle_stream
  # @see Responses::ToggleStream
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#togglestream
  class ToggleStream < Request
    TYPE = "ToggleStream"
  end
  # An instance of <tt>StartStream</tt> request.
  # @see Mixins::Request#start_stream
  # @see Responses::StartStream
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#startstream
  class StartStream < Request
    TYPE = "StartStream"
  end
  # An instance of <tt>StopStream</tt> request.
  # @see Mixins::Request#stop_stream
  # @see Responses::StopStream
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#stopstream
  class StopStream < Request
    TYPE = "StopStream"
  end
  # An instance of <tt>SendStreamCaption</tt> request.
  # @see Mixins::Request#send_stream_caption
  # @see Responses::SendStreamCaption
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#sendstreamcaption
  class SendStreamCaption < Request
    TYPE = "SendStreamCaption"
  end
  # An instance of <tt>GetTransitionKindList</tt> request.
  # @see Mixins::Request#get_transition_kind_list
  # @see Responses::GetTransitionKindList
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#gettransitionkindlist
  class GetTransitionKindList < Request
    TYPE = "GetTransitionKindList"
  end
  # An instance of <tt>GetSceneTransitionList</tt> request.
  # @see Mixins::Request#get_scene_transition_list
  # @see Responses::GetSceneTransitionList
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getscenetransitionlist
  class GetSceneTransitionList < Request
    TYPE = "GetSceneTransitionList"
  end
  # An instance of <tt>GetCurrentSceneTransition</tt> request.
  # @see Mixins::Request#get_current_scene_transition
  # @see Responses::GetCurrentSceneTransition
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getcurrentscenetransition
  class GetCurrentSceneTransition < Request
    TYPE = "GetCurrentSceneTransition"
  end
  # An instance of <tt>SetCurrentSceneTransition</tt> request.
  # @see Mixins::Request#set_current_scene_transition
  # @see Responses::SetCurrentSceneTransition
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setcurrentscenetransition
  class SetCurrentSceneTransition < Request
    TYPE = "SetCurrentSceneTransition"
  end
  # An instance of <tt>SetCurrentSceneTransitionDuration</tt> request.
  # @see Mixins::Request#set_current_scene_transition_duration
  # @see Responses::SetCurrentSceneTransitionDuration
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setcurrentscenetransitionduration
  class SetCurrentSceneTransitionDuration < Request
    TYPE = "SetCurrentSceneTransitionDuration"
  end
  # An instance of <tt>SetCurrentSceneTransitionSettings</tt> request.
  # @see Mixins::Request#set_current_scene_transition_settings
  # @see Responses::SetCurrentSceneTransitionSettings
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setcurrentscenetransitionsettings
  class SetCurrentSceneTransitionSettings < Request
    TYPE = "SetCurrentSceneTransitionSettings"
  end
  # An instance of <tt>GetCurrentSceneTransitionCursor</tt> request.
  # @see Mixins::Request#get_current_scene_transition_cursor
  # @see Responses::GetCurrentSceneTransitionCursor
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getcurrentscenetransitioncursor
  class GetCurrentSceneTransitionCursor < Request
    TYPE = "GetCurrentSceneTransitionCursor"
  end
  # An instance of <tt>TriggerStudioModeTransition</tt> request.
  # @see Mixins::Request#trigger_studio_mode_transition
  # @see Responses::TriggerStudioModeTransition
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#triggerstudiomodetransition
  class TriggerStudioModeTransition < Request
    TYPE = "TriggerStudioModeTransition"
  end
  # An instance of <tt>SetTBarPosition</tt> request.
  # @see Mixins::Request#set_t_bar_position
  # @see Responses::SetTBarPosition
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#settbarposition
  class SetTBarPosition < Request
    TYPE = "SetTBarPosition"
  end
  # An instance of <tt>GetStudioModeEnabled</tt> request.
  # @see Mixins::Request#get_studio_mode_enabled
  # @see Responses::GetStudioModeEnabled
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getstudiomodeenabled
  class GetStudioModeEnabled < Request
    TYPE = "GetStudioModeEnabled"
  end
  # An instance of <tt>SetStudioModeEnabled</tt> request.
  # @see Mixins::Request#set_studio_mode_enabled
  # @see Responses::SetStudioModeEnabled
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setstudiomodeenabled
  class SetStudioModeEnabled < Request
    TYPE = "SetStudioModeEnabled"
  end
  # An instance of <tt>OpenInputPropertiesDialog</tt> request.
  # @see Mixins::Request#open_input_properties_dialog
  # @see Responses::OpenInputPropertiesDialog
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#openinputpropertiesdialog
  class OpenInputPropertiesDialog < Request
    TYPE = "OpenInputPropertiesDialog"
  end
  # An instance of <tt>OpenInputFiltersDialog</tt> request.
  # @see Mixins::Request#open_input_filters_dialog
  # @see Responses::OpenInputFiltersDialog
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#openinputfiltersdialog
  class OpenInputFiltersDialog < Request
    TYPE = "OpenInputFiltersDialog"
  end
  # An instance of <tt>OpenInputInteractDialog</tt> request.
  # @see Mixins::Request#open_input_interact_dialog
  # @see Responses::OpenInputInteractDialog
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#openinputinteractdialog
  class OpenInputInteractDialog < Request
    TYPE = "OpenInputInteractDialog"
  end
  # An instance of <tt>GetMonitorList</tt> request.
  # @see Mixins::Request#get_monitor_list
  # @see Responses::GetMonitorList
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getmonitorlist
  class GetMonitorList < Request
    TYPE = "GetMonitorList"
  end
end  # module Requests
module Responses
  # A response to <tt>GetPersistentData</tt> request.
  # @see Requests::GetPersistentData
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getpersistentdata
  class GetPersistentData < Response
    # @!attribute [r] slot_value
    # @return [Object] <tt>slotValue</tt> field
    def slot_value; get_field("slotValue", TypeConverters::Any); end
    Requests::GetPersistentData::Response = Responses::GetPersistentData
  end
  # A response to <tt>SetPersistentData</tt> request.
  # @see Requests::SetPersistentData
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setpersistentdata
  class SetPersistentData < Response
    Requests::SetPersistentData::Response = Responses::SetPersistentData
  end
  # A response to <tt>GetSceneCollectionList</tt> request.
  # @see Requests::GetSceneCollectionList
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getscenecollectionlist
  class GetSceneCollectionList < Response
    # @!attribute [r] current_scene_collection_name
    # @return [String] <tt>currentSceneCollectionName</tt> field
    def current_scene_collection_name; get_field("currentSceneCollectionName", TypeConverters::String); end
    # @!attribute [r] scene_collections
    # @return [Array<String>] <tt>sceneCollections</tt> field
    def scene_collections; get_field("sceneCollections", TypeConverters::Array[TypeConverters::String]); end
    Requests::GetSceneCollectionList::Response = Responses::GetSceneCollectionList
  end
  # A response to <tt>SetCurrentSceneCollection</tt> request.
  # @see Requests::SetCurrentSceneCollection
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setcurrentscenecollection
  class SetCurrentSceneCollection < Response
    Requests::SetCurrentSceneCollection::Response = Responses::SetCurrentSceneCollection
  end
  # A response to <tt>CreateSceneCollection</tt> request.
  # @see Requests::CreateSceneCollection
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#createscenecollection
  class CreateSceneCollection < Response
    Requests::CreateSceneCollection::Response = Responses::CreateSceneCollection
  end
  # A response to <tt>GetProfileList</tt> request.
  # @see Requests::GetProfileList
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getprofilelist
  class GetProfileList < Response
    # @!attribute [r] current_profile_name
    # @return [String] <tt>currentProfileName</tt> field
    def current_profile_name; get_field("currentProfileName", TypeConverters::String); end
    # @!attribute [r] profiles
    # @return [Array<String>] <tt>profiles</tt> field
    def profiles; get_field("profiles", TypeConverters::Array[TypeConverters::String]); end
    Requests::GetProfileList::Response = Responses::GetProfileList
  end
  # A response to <tt>SetCurrentProfile</tt> request.
  # @see Requests::SetCurrentProfile
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setcurrentprofile
  class SetCurrentProfile < Response
    Requests::SetCurrentProfile::Response = Responses::SetCurrentProfile
  end
  # A response to <tt>CreateProfile</tt> request.
  # @see Requests::CreateProfile
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#createprofile
  class CreateProfile < Response
    Requests::CreateProfile::Response = Responses::CreateProfile
  end
  # A response to <tt>RemoveProfile</tt> request.
  # @see Requests::RemoveProfile
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#removeprofile
  class RemoveProfile < Response
    Requests::RemoveProfile::Response = Responses::RemoveProfile
  end
  # A response to <tt>GetProfileParameter</tt> request.
  # @see Requests::GetProfileParameter
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getprofileparameter
  class GetProfileParameter < Response
    # @!attribute [r] parameter_value
    # @return [String] <tt>parameterValue</tt> field
    def parameter_value; get_field("parameterValue", TypeConverters::String); end
    # @!attribute [r] default_parameter_value
    # @return [String] <tt>defaultParameterValue</tt> field
    def default_parameter_value; get_field("defaultParameterValue", TypeConverters::String); end
    Requests::GetProfileParameter::Response = Responses::GetProfileParameter
  end
  # A response to <tt>SetProfileParameter</tt> request.
  # @see Requests::SetProfileParameter
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setprofileparameter
  class SetProfileParameter < Response
    Requests::SetProfileParameter::Response = Responses::SetProfileParameter
  end
  # A response to <tt>GetVideoSettings</tt> request.
  # @see Requests::GetVideoSettings
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getvideosettings
  class GetVideoSettings < Response
    # @!attribute [r] fps_numerator
    # @return [Numeric] <tt>fpsNumerator</tt> field
    def fps_numerator; get_field("fpsNumerator", TypeConverters::Number); end
    # @!attribute [r] fps_denominator
    # @return [Numeric] <tt>fpsDenominator</tt> field
    def fps_denominator; get_field("fpsDenominator", TypeConverters::Number); end
    # @!attribute [r] base_width
    # @return [Numeric] <tt>baseWidth</tt> field
    def base_width; get_field("baseWidth", TypeConverters::Number); end
    # @!attribute [r] base_height
    # @return [Numeric] <tt>baseHeight</tt> field
    def base_height; get_field("baseHeight", TypeConverters::Number); end
    # @!attribute [r] output_width
    # @return [Numeric] <tt>outputWidth</tt> field
    def output_width; get_field("outputWidth", TypeConverters::Number); end
    # @!attribute [r] output_height
    # @return [Numeric] <tt>outputHeight</tt> field
    def output_height; get_field("outputHeight", TypeConverters::Number); end
    Requests::GetVideoSettings::Response = Responses::GetVideoSettings
  end
  # A response to <tt>SetVideoSettings</tt> request.
  # @see Requests::SetVideoSettings
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setvideosettings
  class SetVideoSettings < Response
    Requests::SetVideoSettings::Response = Responses::SetVideoSettings
  end
  # A response to <tt>GetStreamServiceSettings</tt> request.
  # @see Requests::GetStreamServiceSettings
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getstreamservicesettings
  class GetStreamServiceSettings < Response
    # @!attribute [r] stream_service_type
    # @return [String] <tt>streamServiceType</tt> field
    def stream_service_type; get_field("streamServiceType", TypeConverters::String); end
    # @!attribute [r] stream_service_settings
    # @return [Hash] <tt>streamServiceSettings</tt> field
    def stream_service_settings; get_field("streamServiceSettings", TypeConverters::Object); end
    Requests::GetStreamServiceSettings::Response = Responses::GetStreamServiceSettings
  end
  # A response to <tt>SetStreamServiceSettings</tt> request.
  # @see Requests::SetStreamServiceSettings
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setstreamservicesettings
  class SetStreamServiceSettings < Response
    Requests::SetStreamServiceSettings::Response = Responses::SetStreamServiceSettings
  end
  # A response to <tt>GetRecordDirectory</tt> request.
  # @see Requests::GetRecordDirectory
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getrecorddirectory
  class GetRecordDirectory < Response
    # @!attribute [r] record_directory
    # @return [String] <tt>recordDirectory</tt> field
    def record_directory; get_field("recordDirectory", TypeConverters::String); end
    Requests::GetRecordDirectory::Response = Responses::GetRecordDirectory
  end
  # A response to <tt>GetSourceFilterList</tt> request.
  # @see Requests::GetSourceFilterList
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getsourcefilterlist
  class GetSourceFilterList < Response
    # @!attribute [r] filters
    # @return [Array<Hash>] <tt>filters</tt> field
    def filters; get_field("filters", TypeConverters::Array[TypeConverters::Object]); end
    Requests::GetSourceFilterList::Response = Responses::GetSourceFilterList
  end
  # A response to <tt>GetSourceFilterDefaultSettings</tt> request.
  # @see Requests::GetSourceFilterDefaultSettings
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getsourcefilterdefaultsettings
  class GetSourceFilterDefaultSettings < Response
    # @!attribute [r] default_filter_settings
    # @return [Hash] <tt>defaultFilterSettings</tt> field
    def default_filter_settings; get_field("defaultFilterSettings", TypeConverters::Object); end
    Requests::GetSourceFilterDefaultSettings::Response = Responses::GetSourceFilterDefaultSettings
  end
  # A response to <tt>CreateSourceFilter</tt> request.
  # @see Requests::CreateSourceFilter
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#createsourcefilter
  class CreateSourceFilter < Response
    Requests::CreateSourceFilter::Response = Responses::CreateSourceFilter
  end
  # A response to <tt>RemoveSourceFilter</tt> request.
  # @see Requests::RemoveSourceFilter
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#removesourcefilter
  class RemoveSourceFilter < Response
    Requests::RemoveSourceFilter::Response = Responses::RemoveSourceFilter
  end
  # A response to <tt>SetSourceFilterName</tt> request.
  # @see Requests::SetSourceFilterName
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setsourcefiltername
  class SetSourceFilterName < Response
    Requests::SetSourceFilterName::Response = Responses::SetSourceFilterName
  end
  # A response to <tt>GetSourceFilter</tt> request.
  # @see Requests::GetSourceFilter
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getsourcefilter
  class GetSourceFilter < Response
    # @!attribute [r] filter_enabled
    # @return [Boolean] <tt>filterEnabled</tt> field
    def filter_enabled; get_field("filterEnabled", TypeConverters::Boolean); end
    # @!attribute [r] filter_index
    # @return [Numeric] <tt>filterIndex</tt> field
    def filter_index; get_field("filterIndex", TypeConverters::Number); end
    # @!attribute [r] filter_kind
    # @return [String] <tt>filterKind</tt> field
    def filter_kind; get_field("filterKind", TypeConverters::String); end
    # @!attribute [r] filter_settings
    # @return [Hash] <tt>filterSettings</tt> field
    def filter_settings; get_field("filterSettings", TypeConverters::Object); end
    Requests::GetSourceFilter::Response = Responses::GetSourceFilter
  end
  # A response to <tt>SetSourceFilterIndex</tt> request.
  # @see Requests::SetSourceFilterIndex
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setsourcefilterindex
  class SetSourceFilterIndex < Response
    Requests::SetSourceFilterIndex::Response = Responses::SetSourceFilterIndex
  end
  # A response to <tt>SetSourceFilterSettings</tt> request.
  # @see Requests::SetSourceFilterSettings
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setsourcefiltersettings
  class SetSourceFilterSettings < Response
    Requests::SetSourceFilterSettings::Response = Responses::SetSourceFilterSettings
  end
  # A response to <tt>SetSourceFilterEnabled</tt> request.
  # @see Requests::SetSourceFilterEnabled
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setsourcefilterenabled
  class SetSourceFilterEnabled < Response
    Requests::SetSourceFilterEnabled::Response = Responses::SetSourceFilterEnabled
  end
  # A response to <tt>GetVersion</tt> request.
  # @see Requests::GetVersion
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getversion
  class GetVersion < Response
    # @!attribute [r] obs_version
    # @return [String] <tt>obsVersion</tt> field
    def obs_version; get_field("obsVersion", TypeConverters::String); end
    # @!attribute [r] obs_web_socket_version
    # @return [String] <tt>obsWebSocketVersion</tt> field
    def obs_web_socket_version; get_field("obsWebSocketVersion", TypeConverters::String); end
    # @!attribute [r] rpc_version
    # @return [Numeric] <tt>rpcVersion</tt> field
    def rpc_version; get_field("rpcVersion", TypeConverters::Number); end
    # @!attribute [r] available_requests
    # @return [Array<String>] <tt>availableRequests</tt> field
    def available_requests; get_field("availableRequests", TypeConverters::Array[TypeConverters::String]); end
    # @!attribute [r] supported_image_formats
    # @return [Array<String>] <tt>supportedImageFormats</tt> field
    def supported_image_formats; get_field("supportedImageFormats", TypeConverters::Array[TypeConverters::String]); end
    # @!attribute [r] platform
    # @return [String] <tt>platform</tt> field
    def platform; get_field("platform", TypeConverters::String); end
    # @!attribute [r] platform_description
    # @return [String] <tt>platformDescription</tt> field
    def platform_description; get_field("platformDescription", TypeConverters::String); end
    Requests::GetVersion::Response = Responses::GetVersion
  end
  # A response to <tt>GetStats</tt> request.
  # @see Requests::GetStats
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getstats
  class GetStats < Response
    # @!attribute [r] cpu_usage
    # @return [Numeric] <tt>cpuUsage</tt> field
    def cpu_usage; get_field("cpuUsage", TypeConverters::Number); end
    # @!attribute [r] memory_usage
    # @return [Numeric] <tt>memoryUsage</tt> field
    def memory_usage; get_field("memoryUsage", TypeConverters::Number); end
    # @!attribute [r] available_disk_space
    # @return [Numeric] <tt>availableDiskSpace</tt> field
    def available_disk_space; get_field("availableDiskSpace", TypeConverters::Number); end
    # @!attribute [r] active_fps
    # @return [Numeric] <tt>activeFps</tt> field
    def active_fps; get_field("activeFps", TypeConverters::Number); end
    # @!attribute [r] average_frame_render_time
    # @return [Numeric] <tt>averageFrameRenderTime</tt> field
    def average_frame_render_time; get_field("averageFrameRenderTime", TypeConverters::Number); end
    # @!attribute [r] render_skipped_frames
    # @return [Numeric] <tt>renderSkippedFrames</tt> field
    def render_skipped_frames; get_field("renderSkippedFrames", TypeConverters::Number); end
    # @!attribute [r] render_total_frames
    # @return [Numeric] <tt>renderTotalFrames</tt> field
    def render_total_frames; get_field("renderTotalFrames", TypeConverters::Number); end
    # @!attribute [r] output_skipped_frames
    # @return [Numeric] <tt>outputSkippedFrames</tt> field
    def output_skipped_frames; get_field("outputSkippedFrames", TypeConverters::Number); end
    # @!attribute [r] output_total_frames
    # @return [Numeric] <tt>outputTotalFrames</tt> field
    def output_total_frames; get_field("outputTotalFrames", TypeConverters::Number); end
    # @!attribute [r] web_socket_session_incoming_messages
    # @return [Numeric] <tt>webSocketSessionIncomingMessages</tt> field
    def web_socket_session_incoming_messages; get_field("webSocketSessionIncomingMessages", TypeConverters::Number); end
    # @!attribute [r] web_socket_session_outgoing_messages
    # @return [Numeric] <tt>webSocketSessionOutgoingMessages</tt> field
    def web_socket_session_outgoing_messages; get_field("webSocketSessionOutgoingMessages", TypeConverters::Number); end
    Requests::GetStats::Response = Responses::GetStats
  end
  # A response to <tt>BroadcastCustomEvent</tt> request.
  # @see Requests::BroadcastCustomEvent
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#broadcastcustomevent
  class BroadcastCustomEvent < Response
    Requests::BroadcastCustomEvent::Response = Responses::BroadcastCustomEvent
  end
  # A response to <tt>CallVendorRequest</tt> request.
  # @see Requests::CallVendorRequest
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#callvendorrequest
  class CallVendorRequest < Response
    # @!attribute [r] response_data
    # @return [Hash] <tt>responseData</tt> field
    def response_data; get_field("responseData", TypeConverters::Object); end
    Requests::CallVendorRequest::Response = Responses::CallVendorRequest
  end
  # A response to <tt>GetHotkeyList</tt> request.
  # @see Requests::GetHotkeyList
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#gethotkeylist
  class GetHotkeyList < Response
    # @!attribute [r] hotkeys
    # @return [Array<String>] <tt>hotkeys</tt> field
    def hotkeys; get_field("hotkeys", TypeConverters::Array[TypeConverters::String]); end
    Requests::GetHotkeyList::Response = Responses::GetHotkeyList
  end
  # A response to <tt>TriggerHotkeyByName</tt> request.
  # @see Requests::TriggerHotkeyByName
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#triggerhotkeybyname
  class TriggerHotkeyByName < Response
    Requests::TriggerHotkeyByName::Response = Responses::TriggerHotkeyByName
  end
  # A response to <tt>TriggerHotkeyByKeySequence</tt> request.
  # @see Requests::TriggerHotkeyByKeySequence
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#triggerhotkeybykeysequence
  class TriggerHotkeyByKeySequence < Response
    Requests::TriggerHotkeyByKeySequence::Response = Responses::TriggerHotkeyByKeySequence
  end
  # A response to <tt>Sleep</tt> request.
  # @see Requests::Sleep
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#sleep
  class Sleep < Response
    Requests::Sleep::Response = Responses::Sleep
  end
  # A response to <tt>GetInputList</tt> request.
  # @see Requests::GetInputList
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getinputlist
  class GetInputList < Response
    # @!attribute [r] inputs
    # @return [Array<Hash>] <tt>inputs</tt> field
    def inputs; get_field("inputs", TypeConverters::Array[TypeConverters::Object]); end
    Requests::GetInputList::Response = Responses::GetInputList
  end
  # A response to <tt>GetInputKindList</tt> request.
  # @see Requests::GetInputKindList
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getinputkindlist
  class GetInputKindList < Response
    # @!attribute [r] input_kinds
    # @return [Array<String>] <tt>inputKinds</tt> field
    def input_kinds; get_field("inputKinds", TypeConverters::Array[TypeConverters::String]); end
    Requests::GetInputKindList::Response = Responses::GetInputKindList
  end
  # A response to <tt>GetSpecialInputs</tt> request.
  # @see Requests::GetSpecialInputs
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getspecialinputs
  class GetSpecialInputs < Response
    # @!attribute [r] desktop1
    # @return [String] <tt>desktop1</tt> field
    def desktop1; get_field("desktop1", TypeConverters::String); end
    # @!attribute [r] desktop2
    # @return [String] <tt>desktop2</tt> field
    def desktop2; get_field("desktop2", TypeConverters::String); end
    # @!attribute [r] mic1
    # @return [String] <tt>mic1</tt> field
    def mic1; get_field("mic1", TypeConverters::String); end
    # @!attribute [r] mic2
    # @return [String] <tt>mic2</tt> field
    def mic2; get_field("mic2", TypeConverters::String); end
    # @!attribute [r] mic3
    # @return [String] <tt>mic3</tt> field
    def mic3; get_field("mic3", TypeConverters::String); end
    # @!attribute [r] mic4
    # @return [String] <tt>mic4</tt> field
    def mic4; get_field("mic4", TypeConverters::String); end
    Requests::GetSpecialInputs::Response = Responses::GetSpecialInputs
  end
  # A response to <tt>CreateInput</tt> request.
  # @see Requests::CreateInput
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#createinput
  class CreateInput < Response
    # @!attribute [r] scene_item_id
    # @return [Numeric] <tt>sceneItemId</tt> field
    def scene_item_id; get_field("sceneItemId", TypeConverters::Number); end
    Requests::CreateInput::Response = Responses::CreateInput
  end
  # A response to <tt>RemoveInput</tt> request.
  # @see Requests::RemoveInput
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#removeinput
  class RemoveInput < Response
    Requests::RemoveInput::Response = Responses::RemoveInput
  end
  # A response to <tt>SetInputName</tt> request.
  # @see Requests::SetInputName
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setinputname
  class SetInputName < Response
    Requests::SetInputName::Response = Responses::SetInputName
  end
  # A response to <tt>GetInputDefaultSettings</tt> request.
  # @see Requests::GetInputDefaultSettings
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getinputdefaultsettings
  class GetInputDefaultSettings < Response
    # @!attribute [r] default_input_settings
    # @return [Hash] <tt>defaultInputSettings</tt> field
    def default_input_settings; get_field("defaultInputSettings", TypeConverters::Object); end
    Requests::GetInputDefaultSettings::Response = Responses::GetInputDefaultSettings
  end
  # A response to <tt>GetInputSettings</tt> request.
  # @see Requests::GetInputSettings
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getinputsettings
  class GetInputSettings < Response
    # @!attribute [r] input_settings
    # @return [Hash] <tt>inputSettings</tt> field
    def input_settings; get_field("inputSettings", TypeConverters::Object); end
    # @!attribute [r] input_kind
    # @return [String] <tt>inputKind</tt> field
    def input_kind; get_field("inputKind", TypeConverters::String); end
    Requests::GetInputSettings::Response = Responses::GetInputSettings
  end
  # A response to <tt>SetInputSettings</tt> request.
  # @see Requests::SetInputSettings
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setinputsettings
  class SetInputSettings < Response
    Requests::SetInputSettings::Response = Responses::SetInputSettings
  end
  # A response to <tt>GetInputMute</tt> request.
  # @see Requests::GetInputMute
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getinputmute
  class GetInputMute < Response
    # @!attribute [r] input_muted
    # @return [Boolean] <tt>inputMuted</tt> field
    def input_muted; get_field("inputMuted", TypeConverters::Boolean); end
    Requests::GetInputMute::Response = Responses::GetInputMute
  end
  # A response to <tt>SetInputMute</tt> request.
  # @see Requests::SetInputMute
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setinputmute
  class SetInputMute < Response
    Requests::SetInputMute::Response = Responses::SetInputMute
  end
  # A response to <tt>ToggleInputMute</tt> request.
  # @see Requests::ToggleInputMute
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#toggleinputmute
  class ToggleInputMute < Response
    # @!attribute [r] input_muted
    # @return [Boolean] <tt>inputMuted</tt> field
    def input_muted; get_field("inputMuted", TypeConverters::Boolean); end
    Requests::ToggleInputMute::Response = Responses::ToggleInputMute
  end
  # A response to <tt>GetInputVolume</tt> request.
  # @see Requests::GetInputVolume
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getinputvolume
  class GetInputVolume < Response
    # @!attribute [r] input_volume_mul
    # @return [Numeric] <tt>inputVolumeMul</tt> field
    def input_volume_mul; get_field("inputVolumeMul", TypeConverters::Number); end
    # @!attribute [r] input_volume_db
    # @return [Numeric] <tt>inputVolumeDb</tt> field
    def input_volume_db; get_field("inputVolumeDb", TypeConverters::Number); end
    Requests::GetInputVolume::Response = Responses::GetInputVolume
  end
  # A response to <tt>SetInputVolume</tt> request.
  # @see Requests::SetInputVolume
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setinputvolume
  class SetInputVolume < Response
    Requests::SetInputVolume::Response = Responses::SetInputVolume
  end
  # A response to <tt>GetInputAudioBalance</tt> request.
  # @see Requests::GetInputAudioBalance
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getinputaudiobalance
  class GetInputAudioBalance < Response
    # @!attribute [r] input_audio_balance
    # @return [Numeric] <tt>inputAudioBalance</tt> field
    def input_audio_balance; get_field("inputAudioBalance", TypeConverters::Number); end
    Requests::GetInputAudioBalance::Response = Responses::GetInputAudioBalance
  end
  # A response to <tt>SetInputAudioBalance</tt> request.
  # @see Requests::SetInputAudioBalance
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setinputaudiobalance
  class SetInputAudioBalance < Response
    Requests::SetInputAudioBalance::Response = Responses::SetInputAudioBalance
  end
  # A response to <tt>GetInputAudioSyncOffset</tt> request.
  # @see Requests::GetInputAudioSyncOffset
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getinputaudiosyncoffset
  class GetInputAudioSyncOffset < Response
    # @!attribute [r] input_audio_sync_offset
    # @return [Numeric] <tt>inputAudioSyncOffset</tt> field
    def input_audio_sync_offset; get_field("inputAudioSyncOffset", TypeConverters::Number); end
    Requests::GetInputAudioSyncOffset::Response = Responses::GetInputAudioSyncOffset
  end
  # A response to <tt>SetInputAudioSyncOffset</tt> request.
  # @see Requests::SetInputAudioSyncOffset
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setinputaudiosyncoffset
  class SetInputAudioSyncOffset < Response
    Requests::SetInputAudioSyncOffset::Response = Responses::SetInputAudioSyncOffset
  end
  # A response to <tt>GetInputAudioMonitorType</tt> request.
  # @see Requests::GetInputAudioMonitorType
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getinputaudiomonitortype
  class GetInputAudioMonitorType < Response
    # @!attribute [r] monitor_type
    # @return [String] <tt>monitorType</tt> field
    def monitor_type; get_field("monitorType", TypeConverters::String); end
    Requests::GetInputAudioMonitorType::Response = Responses::GetInputAudioMonitorType
  end
  # A response to <tt>SetInputAudioMonitorType</tt> request.
  # @see Requests::SetInputAudioMonitorType
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setinputaudiomonitortype
  class SetInputAudioMonitorType < Response
    Requests::SetInputAudioMonitorType::Response = Responses::SetInputAudioMonitorType
  end
  # A response to <tt>GetInputAudioTracks</tt> request.
  # @see Requests::GetInputAudioTracks
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getinputaudiotracks
  class GetInputAudioTracks < Response
    # @!attribute [r] input_audio_tracks
    # @return [Hash] <tt>inputAudioTracks</tt> field
    def input_audio_tracks; get_field("inputAudioTracks", TypeConverters::Object); end
    Requests::GetInputAudioTracks::Response = Responses::GetInputAudioTracks
  end
  # A response to <tt>SetInputAudioTracks</tt> request.
  # @see Requests::SetInputAudioTracks
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setinputaudiotracks
  class SetInputAudioTracks < Response
    Requests::SetInputAudioTracks::Response = Responses::SetInputAudioTracks
  end
  # A response to <tt>GetInputPropertiesListPropertyItems</tt> request.
  # @see Requests::GetInputPropertiesListPropertyItems
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getinputpropertieslistpropertyitems
  class GetInputPropertiesListPropertyItems < Response
    # @!attribute [r] property_items
    # @return [Array<Hash>] <tt>propertyItems</tt> field
    def property_items; get_field("propertyItems", TypeConverters::Array[TypeConverters::Object]); end
    Requests::GetInputPropertiesListPropertyItems::Response = Responses::GetInputPropertiesListPropertyItems
  end
  # A response to <tt>PressInputPropertiesButton</tt> request.
  # @see Requests::PressInputPropertiesButton
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#pressinputpropertiesbutton
  class PressInputPropertiesButton < Response
    Requests::PressInputPropertiesButton::Response = Responses::PressInputPropertiesButton
  end
  # A response to <tt>GetMediaInputStatus</tt> request.
  # @see Requests::GetMediaInputStatus
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getmediainputstatus
  class GetMediaInputStatus < Response
    # @!attribute [r] media_state
    # @return [String] <tt>mediaState</tt> field
    def media_state; get_field("mediaState", TypeConverters::String); end
    # @!attribute [r] media_duration
    # @return [Numeric] <tt>mediaDuration</tt> field
    def media_duration; get_field("mediaDuration", TypeConverters::Number); end
    # @!attribute [r] media_cursor
    # @return [Numeric] <tt>mediaCursor</tt> field
    def media_cursor; get_field("mediaCursor", TypeConverters::Number); end
    Requests::GetMediaInputStatus::Response = Responses::GetMediaInputStatus
  end
  # A response to <tt>SetMediaInputCursor</tt> request.
  # @see Requests::SetMediaInputCursor
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setmediainputcursor
  class SetMediaInputCursor < Response
    Requests::SetMediaInputCursor::Response = Responses::SetMediaInputCursor
  end
  # A response to <tt>OffsetMediaInputCursor</tt> request.
  # @see Requests::OffsetMediaInputCursor
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#offsetmediainputcursor
  class OffsetMediaInputCursor < Response
    Requests::OffsetMediaInputCursor::Response = Responses::OffsetMediaInputCursor
  end
  # A response to <tt>TriggerMediaInputAction</tt> request.
  # @see Requests::TriggerMediaInputAction
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#triggermediainputaction
  class TriggerMediaInputAction < Response
    Requests::TriggerMediaInputAction::Response = Responses::TriggerMediaInputAction
  end
  # A response to <tt>GetVirtualCamStatus</tt> request.
  # @see Requests::GetVirtualCamStatus
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getvirtualcamstatus
  class GetVirtualCamStatus < Response
    # @!attribute [r] output_active
    # @return [Boolean] <tt>outputActive</tt> field
    def output_active; get_field("outputActive", TypeConverters::Boolean); end
    Requests::GetVirtualCamStatus::Response = Responses::GetVirtualCamStatus
  end
  # A response to <tt>ToggleVirtualCam</tt> request.
  # @see Requests::ToggleVirtualCam
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#togglevirtualcam
  class ToggleVirtualCam < Response
    # @!attribute [r] output_active
    # @return [Boolean] <tt>outputActive</tt> field
    def output_active; get_field("outputActive", TypeConverters::Boolean); end
    Requests::ToggleVirtualCam::Response = Responses::ToggleVirtualCam
  end
  # A response to <tt>StartVirtualCam</tt> request.
  # @see Requests::StartVirtualCam
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#startvirtualcam
  class StartVirtualCam < Response
    Requests::StartVirtualCam::Response = Responses::StartVirtualCam
  end
  # A response to <tt>StopVirtualCam</tt> request.
  # @see Requests::StopVirtualCam
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#stopvirtualcam
  class StopVirtualCam < Response
    Requests::StopVirtualCam::Response = Responses::StopVirtualCam
  end
  # A response to <tt>GetReplayBufferStatus</tt> request.
  # @see Requests::GetReplayBufferStatus
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getreplaybufferstatus
  class GetReplayBufferStatus < Response
    # @!attribute [r] output_active
    # @return [Boolean] <tt>outputActive</tt> field
    def output_active; get_field("outputActive", TypeConverters::Boolean); end
    Requests::GetReplayBufferStatus::Response = Responses::GetReplayBufferStatus
  end
  # A response to <tt>ToggleReplayBuffer</tt> request.
  # @see Requests::ToggleReplayBuffer
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#togglereplaybuffer
  class ToggleReplayBuffer < Response
    # @!attribute [r] output_active
    # @return [Boolean] <tt>outputActive</tt> field
    def output_active; get_field("outputActive", TypeConverters::Boolean); end
    Requests::ToggleReplayBuffer::Response = Responses::ToggleReplayBuffer
  end
  # A response to <tt>StartReplayBuffer</tt> request.
  # @see Requests::StartReplayBuffer
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#startreplaybuffer
  class StartReplayBuffer < Response
    Requests::StartReplayBuffer::Response = Responses::StartReplayBuffer
  end
  # A response to <tt>StopReplayBuffer</tt> request.
  # @see Requests::StopReplayBuffer
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#stopreplaybuffer
  class StopReplayBuffer < Response
    Requests::StopReplayBuffer::Response = Responses::StopReplayBuffer
  end
  # A response to <tt>SaveReplayBuffer</tt> request.
  # @see Requests::SaveReplayBuffer
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#savereplaybuffer
  class SaveReplayBuffer < Response
    Requests::SaveReplayBuffer::Response = Responses::SaveReplayBuffer
  end
  # A response to <tt>GetLastReplayBufferReplay</tt> request.
  # @see Requests::GetLastReplayBufferReplay
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getlastreplaybufferreplay
  class GetLastReplayBufferReplay < Response
    # @!attribute [r] saved_replay_path
    # @return [String] <tt>savedReplayPath</tt> field
    def saved_replay_path; get_field("savedReplayPath", TypeConverters::String); end
    Requests::GetLastReplayBufferReplay::Response = Responses::GetLastReplayBufferReplay
  end
  # A response to <tt>GetRecordStatus</tt> request.
  # @see Requests::GetRecordStatus
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getrecordstatus
  class GetRecordStatus < Response
    # @!attribute [r] output_active
    # @return [Boolean] <tt>outputActive</tt> field
    def output_active; get_field("outputActive", TypeConverters::Boolean); end
    # @!attribute [r] ouput_paused
    # @return [Boolean] <tt>ouputPaused</tt> field
    def ouput_paused; get_field("ouputPaused", TypeConverters::Boolean); end
    # @!attribute [r] output_timecode
    # @return [String] <tt>outputTimecode</tt> field
    def output_timecode; get_field("outputTimecode", TypeConverters::String); end
    # @!attribute [r] output_duration
    # @return [Numeric] <tt>outputDuration</tt> field
    def output_duration; get_field("outputDuration", TypeConverters::Number); end
    # @!attribute [r] output_bytes
    # @return [Numeric] <tt>outputBytes</tt> field
    def output_bytes; get_field("outputBytes", TypeConverters::Number); end
    Requests::GetRecordStatus::Response = Responses::GetRecordStatus
  end
  # A response to <tt>ToggleRecord</tt> request.
  # @see Requests::ToggleRecord
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#togglerecord
  class ToggleRecord < Response
    Requests::ToggleRecord::Response = Responses::ToggleRecord
  end
  # A response to <tt>StartRecord</tt> request.
  # @see Requests::StartRecord
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#startrecord
  class StartRecord < Response
    Requests::StartRecord::Response = Responses::StartRecord
  end
  # A response to <tt>StopRecord</tt> request.
  # @see Requests::StopRecord
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#stoprecord
  class StopRecord < Response
    Requests::StopRecord::Response = Responses::StopRecord
  end
  # A response to <tt>ToggleRecordPause</tt> request.
  # @see Requests::ToggleRecordPause
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#togglerecordpause
  class ToggleRecordPause < Response
    Requests::ToggleRecordPause::Response = Responses::ToggleRecordPause
  end
  # A response to <tt>PauseRecord</tt> request.
  # @see Requests::PauseRecord
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#pauserecord
  class PauseRecord < Response
    Requests::PauseRecord::Response = Responses::PauseRecord
  end
  # A response to <tt>ResumeRecord</tt> request.
  # @see Requests::ResumeRecord
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#resumerecord
  class ResumeRecord < Response
    Requests::ResumeRecord::Response = Responses::ResumeRecord
  end
  # A response to <tt>GetSceneItemList</tt> request.
  # @see Requests::GetSceneItemList
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getsceneitemlist
  class GetSceneItemList < Response
    # @!attribute [r] scene_items
    # @return [Array<Hash>] <tt>sceneItems</tt> field
    def scene_items; get_field("sceneItems", TypeConverters::Array[TypeConverters::Object]); end
    Requests::GetSceneItemList::Response = Responses::GetSceneItemList
  end
  # A response to <tt>GetGroupItemList</tt> request.
  # @see Requests::GetGroupItemList
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getgroupitemlist
  class GetGroupItemList < Response
    # @!attribute [r] scene_items
    # @return [Array<Hash>] <tt>sceneItems</tt> field
    def scene_items; get_field("sceneItems", TypeConverters::Array[TypeConverters::Object]); end
    Requests::GetGroupItemList::Response = Responses::GetGroupItemList
  end
  # A response to <tt>GetSceneItemId</tt> request.
  # @see Requests::GetSceneItemId
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getsceneitemid
  class GetSceneItemId < Response
    # @!attribute [r] scene_item_id
    # @return [Numeric] <tt>sceneItemId</tt> field
    def scene_item_id; get_field("sceneItemId", TypeConverters::Number); end
    Requests::GetSceneItemId::Response = Responses::GetSceneItemId
  end
  # A response to <tt>CreateSceneItem</tt> request.
  # @see Requests::CreateSceneItem
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#createsceneitem
  class CreateSceneItem < Response
    # @!attribute [r] scene_item_id
    # @return [Numeric] <tt>sceneItemId</tt> field
    def scene_item_id; get_field("sceneItemId", TypeConverters::Number); end
    Requests::CreateSceneItem::Response = Responses::CreateSceneItem
  end
  # A response to <tt>RemoveSceneItem</tt> request.
  # @see Requests::RemoveSceneItem
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#removesceneitem
  class RemoveSceneItem < Response
    Requests::RemoveSceneItem::Response = Responses::RemoveSceneItem
  end
  # A response to <tt>DuplicateSceneItem</tt> request.
  # @see Requests::DuplicateSceneItem
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#duplicatesceneitem
  class DuplicateSceneItem < Response
    # @!attribute [r] scene_item_id
    # @return [Numeric] <tt>sceneItemId</tt> field
    def scene_item_id; get_field("sceneItemId", TypeConverters::Number); end
    Requests::DuplicateSceneItem::Response = Responses::DuplicateSceneItem
  end
  # A response to <tt>GetSceneItemTransform</tt> request.
  # @see Requests::GetSceneItemTransform
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getsceneitemtransform
  class GetSceneItemTransform < Response
    # @!attribute [r] scene_item_transform
    # @return [Hash] <tt>sceneItemTransform</tt> field
    def scene_item_transform; get_field("sceneItemTransform", TypeConverters::Object); end
    Requests::GetSceneItemTransform::Response = Responses::GetSceneItemTransform
  end
  # A response to <tt>SetSceneItemTransform</tt> request.
  # @see Requests::SetSceneItemTransform
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setsceneitemtransform
  class SetSceneItemTransform < Response
    Requests::SetSceneItemTransform::Response = Responses::SetSceneItemTransform
  end
  # A response to <tt>GetSceneItemEnabled</tt> request.
  # @see Requests::GetSceneItemEnabled
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getsceneitemenabled
  class GetSceneItemEnabled < Response
    # @!attribute [r] scene_item_enabled
    # @return [Boolean] <tt>sceneItemEnabled</tt> field
    def scene_item_enabled; get_field("sceneItemEnabled", TypeConverters::Boolean); end
    Requests::GetSceneItemEnabled::Response = Responses::GetSceneItemEnabled
  end
  # A response to <tt>SetSceneItemEnabled</tt> request.
  # @see Requests::SetSceneItemEnabled
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setsceneitemenabled
  class SetSceneItemEnabled < Response
    Requests::SetSceneItemEnabled::Response = Responses::SetSceneItemEnabled
  end
  # A response to <tt>GetSceneItemLocked</tt> request.
  # @see Requests::GetSceneItemLocked
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getsceneitemlocked
  class GetSceneItemLocked < Response
    # @!attribute [r] scene_item_locked
    # @return [Boolean] <tt>sceneItemLocked</tt> field
    def scene_item_locked; get_field("sceneItemLocked", TypeConverters::Boolean); end
    Requests::GetSceneItemLocked::Response = Responses::GetSceneItemLocked
  end
  # A response to <tt>SetSceneItemLocked</tt> request.
  # @see Requests::SetSceneItemLocked
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setsceneitemlocked
  class SetSceneItemLocked < Response
    Requests::SetSceneItemLocked::Response = Responses::SetSceneItemLocked
  end
  # A response to <tt>GetSceneItemIndex</tt> request.
  # @see Requests::GetSceneItemIndex
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getsceneitemindex
  class GetSceneItemIndex < Response
    # @!attribute [r] scene_item_index
    # @return [Numeric] <tt>sceneItemIndex</tt> field
    def scene_item_index; get_field("sceneItemIndex", TypeConverters::Number); end
    Requests::GetSceneItemIndex::Response = Responses::GetSceneItemIndex
  end
  # A response to <tt>SetSceneItemIndex</tt> request.
  # @see Requests::SetSceneItemIndex
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setsceneitemindex
  class SetSceneItemIndex < Response
    Requests::SetSceneItemIndex::Response = Responses::SetSceneItemIndex
  end
  # A response to <tt>GetSceneItemBlendMode</tt> request.
  # @see Requests::GetSceneItemBlendMode
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getsceneitemblendmode
  class GetSceneItemBlendMode < Response
    # @!attribute [r] scene_item_blend_mode
    # @return [String] <tt>sceneItemBlendMode</tt> field
    def scene_item_blend_mode; get_field("sceneItemBlendMode", TypeConverters::String); end
    Requests::GetSceneItemBlendMode::Response = Responses::GetSceneItemBlendMode
  end
  # A response to <tt>SetSceneItemBlendMode</tt> request.
  # @see Requests::SetSceneItemBlendMode
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setsceneitemblendmode
  class SetSceneItemBlendMode < Response
    Requests::SetSceneItemBlendMode::Response = Responses::SetSceneItemBlendMode
  end
  # A response to <tt>GetSceneList</tt> request.
  # @see Requests::GetSceneList
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getscenelist
  class GetSceneList < Response
    # @!attribute [r] current_program_scene_name
    # @return [String] <tt>currentProgramSceneName</tt> field
    def current_program_scene_name; get_field("currentProgramSceneName", TypeConverters::String); end
    # @!attribute [r] current_preview_scene_name
    # @return [String] <tt>currentPreviewSceneName</tt> field
    def current_preview_scene_name; get_field("currentPreviewSceneName", TypeConverters::String); end
    # @!attribute [r] scenes
    # @return [Array<Hash>] <tt>scenes</tt> field
    def scenes; get_field("scenes", TypeConverters::Array[TypeConverters::Object]); end
    Requests::GetSceneList::Response = Responses::GetSceneList
  end
  # A response to <tt>GetGroupList</tt> request.
  # @see Requests::GetGroupList
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getgrouplist
  class GetGroupList < Response
    # @!attribute [r] groups
    # @return [Array<String>] <tt>groups</tt> field
    def groups; get_field("groups", TypeConverters::Array[TypeConverters::String]); end
    Requests::GetGroupList::Response = Responses::GetGroupList
  end
  # A response to <tt>GetCurrentProgramScene</tt> request.
  # @see Requests::GetCurrentProgramScene
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getcurrentprogramscene
  class GetCurrentProgramScene < Response
    # @!attribute [r] current_program_scene_name
    # @return [String] <tt>currentProgramSceneName</tt> field
    def current_program_scene_name; get_field("currentProgramSceneName", TypeConverters::String); end
    Requests::GetCurrentProgramScene::Response = Responses::GetCurrentProgramScene
  end
  # A response to <tt>SetCurrentProgramScene</tt> request.
  # @see Requests::SetCurrentProgramScene
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setcurrentprogramscene
  class SetCurrentProgramScene < Response
    Requests::SetCurrentProgramScene::Response = Responses::SetCurrentProgramScene
  end
  # A response to <tt>GetCurrentPreviewScene</tt> request.
  # @see Requests::GetCurrentPreviewScene
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getcurrentpreviewscene
  class GetCurrentPreviewScene < Response
    # @!attribute [r] current_preview_scene_name
    # @return [String] <tt>currentPreviewSceneName</tt> field
    def current_preview_scene_name; get_field("currentPreviewSceneName", TypeConverters::String); end
    Requests::GetCurrentPreviewScene::Response = Responses::GetCurrentPreviewScene
  end
  # A response to <tt>SetCurrentPreviewScene</tt> request.
  # @see Requests::SetCurrentPreviewScene
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setcurrentpreviewscene
  class SetCurrentPreviewScene < Response
    Requests::SetCurrentPreviewScene::Response = Responses::SetCurrentPreviewScene
  end
  # A response to <tt>CreateScene</tt> request.
  # @see Requests::CreateScene
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#createscene
  class CreateScene < Response
    Requests::CreateScene::Response = Responses::CreateScene
  end
  # A response to <tt>RemoveScene</tt> request.
  # @see Requests::RemoveScene
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#removescene
  class RemoveScene < Response
    Requests::RemoveScene::Response = Responses::RemoveScene
  end
  # A response to <tt>SetSceneName</tt> request.
  # @see Requests::SetSceneName
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setscenename
  class SetSceneName < Response
    Requests::SetSceneName::Response = Responses::SetSceneName
  end
  # A response to <tt>GetSceneSceneTransitionOverride</tt> request.
  # @see Requests::GetSceneSceneTransitionOverride
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getscenescenetransitionoverride
  class GetSceneSceneTransitionOverride < Response
    # @!attribute [r] transition_name
    # @return [String] <tt>transitionName</tt> field
    def transition_name; get_field("transitionName", TypeConverters::String); end
    # @!attribute [r] transition_duration
    # @return [Numeric] <tt>transitionDuration</tt> field
    def transition_duration; get_field("transitionDuration", TypeConverters::Number); end
    Requests::GetSceneSceneTransitionOverride::Response = Responses::GetSceneSceneTransitionOverride
  end
  # A response to <tt>SetSceneSceneTransitionOverride</tt> request.
  # @see Requests::SetSceneSceneTransitionOverride
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setscenescenetransitionoverride
  class SetSceneSceneTransitionOverride < Response
    Requests::SetSceneSceneTransitionOverride::Response = Responses::SetSceneSceneTransitionOverride
  end
  # A response to <tt>GetSourceActive</tt> request.
  # @see Requests::GetSourceActive
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getsourceactive
  class GetSourceActive < Response
    # @!attribute [r] video_active
    # @return [Boolean] <tt>videoActive</tt> field
    def video_active; get_field("videoActive", TypeConverters::Boolean); end
    # @!attribute [r] video_showing
    # @return [Boolean] <tt>videoShowing</tt> field
    def video_showing; get_field("videoShowing", TypeConverters::Boolean); end
    Requests::GetSourceActive::Response = Responses::GetSourceActive
  end
  # A response to <tt>GetSourceScreenshot</tt> request.
  # @see Requests::GetSourceScreenshot
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getsourcescreenshot
  class GetSourceScreenshot < Response
    # @!attribute [r] image_data
    # @return [String] <tt>imageData</tt> field
    def image_data; get_field("imageData", TypeConverters::String); end
    Requests::GetSourceScreenshot::Response = Responses::GetSourceScreenshot
  end
  # A response to <tt>SaveSourceScreenshot</tt> request.
  # @see Requests::SaveSourceScreenshot
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#savesourcescreenshot
  class SaveSourceScreenshot < Response
    # @!attribute [r] image_data
    # @return [String] <tt>imageData</tt> field
    def image_data; get_field("imageData", TypeConverters::String); end
    Requests::SaveSourceScreenshot::Response = Responses::SaveSourceScreenshot
  end
  # A response to <tt>GetStreamStatus</tt> request.
  # @see Requests::GetStreamStatus
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getstreamstatus
  class GetStreamStatus < Response
    # @!attribute [r] output_active
    # @return [Boolean] <tt>outputActive</tt> field
    def output_active; get_field("outputActive", TypeConverters::Boolean); end
    # @!attribute [r] output_reconnecting
    # @return [Boolean] <tt>outputReconnecting</tt> field
    def output_reconnecting; get_field("outputReconnecting", TypeConverters::Boolean); end
    # @!attribute [r] output_timecode
    # @return [String] <tt>outputTimecode</tt> field
    def output_timecode; get_field("outputTimecode", TypeConverters::String); end
    # @!attribute [r] output_duration
    # @return [Numeric] <tt>outputDuration</tt> field
    def output_duration; get_field("outputDuration", TypeConverters::Number); end
    # @!attribute [r] output_bytes
    # @return [Numeric] <tt>outputBytes</tt> field
    def output_bytes; get_field("outputBytes", TypeConverters::Number); end
    # @!attribute [r] output_skipped_frames
    # @return [Numeric] <tt>outputSkippedFrames</tt> field
    def output_skipped_frames; get_field("outputSkippedFrames", TypeConverters::Number); end
    # @!attribute [r] output_total_frames
    # @return [Numeric] <tt>outputTotalFrames</tt> field
    def output_total_frames; get_field("outputTotalFrames", TypeConverters::Number); end
    Requests::GetStreamStatus::Response = Responses::GetStreamStatus
  end
  # A response to <tt>ToggleStream</tt> request.
  # @see Requests::ToggleStream
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#togglestream
  class ToggleStream < Response
    # @!attribute [r] output_active
    # @return [Boolean] <tt>outputActive</tt> field
    def output_active; get_field("outputActive", TypeConverters::Boolean); end
    Requests::ToggleStream::Response = Responses::ToggleStream
  end
  # A response to <tt>StartStream</tt> request.
  # @see Requests::StartStream
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#startstream
  class StartStream < Response
    Requests::StartStream::Response = Responses::StartStream
  end
  # A response to <tt>StopStream</tt> request.
  # @see Requests::StopStream
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#stopstream
  class StopStream < Response
    Requests::StopStream::Response = Responses::StopStream
  end
  # A response to <tt>SendStreamCaption</tt> request.
  # @see Requests::SendStreamCaption
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#sendstreamcaption
  class SendStreamCaption < Response
    Requests::SendStreamCaption::Response = Responses::SendStreamCaption
  end
  # A response to <tt>GetTransitionKindList</tt> request.
  # @see Requests::GetTransitionKindList
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#gettransitionkindlist
  class GetTransitionKindList < Response
    # @!attribute [r] transition_kinds
    # @return [Array<String>] <tt>transitionKinds</tt> field
    def transition_kinds; get_field("transitionKinds", TypeConverters::Array[TypeConverters::String]); end
    Requests::GetTransitionKindList::Response = Responses::GetTransitionKindList
  end
  # A response to <tt>GetSceneTransitionList</tt> request.
  # @see Requests::GetSceneTransitionList
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getscenetransitionlist
  class GetSceneTransitionList < Response
    # @!attribute [r] current_scene_transition_name
    # @return [String] <tt>currentSceneTransitionName</tt> field
    def current_scene_transition_name; get_field("currentSceneTransitionName", TypeConverters::String); end
    # @!attribute [r] current_scene_transition_kind
    # @return [String] <tt>currentSceneTransitionKind</tt> field
    def current_scene_transition_kind; get_field("currentSceneTransitionKind", TypeConverters::String); end
    # @!attribute [r] transitions
    # @return [Array<Hash>] <tt>transitions</tt> field
    def transitions; get_field("transitions", TypeConverters::Array[TypeConverters::Object]); end
    Requests::GetSceneTransitionList::Response = Responses::GetSceneTransitionList
  end
  # A response to <tt>GetCurrentSceneTransition</tt> request.
  # @see Requests::GetCurrentSceneTransition
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getcurrentscenetransition
  class GetCurrentSceneTransition < Response
    # @!attribute [r] transition_name
    # @return [String] <tt>transitionName</tt> field
    def transition_name; get_field("transitionName", TypeConverters::String); end
    # @!attribute [r] transition_kind
    # @return [String] <tt>transitionKind</tt> field
    def transition_kind; get_field("transitionKind", TypeConverters::String); end
    # @!attribute [r] transition_fixed
    # @return [Boolean] <tt>transitionFixed</tt> field
    def transition_fixed; get_field("transitionFixed", TypeConverters::Boolean); end
    # @!attribute [r] transition_duration
    # @return [Numeric] <tt>transitionDuration</tt> field
    def transition_duration; get_field("transitionDuration", TypeConverters::Number); end
    # @!attribute [r] transition_configurable
    # @return [Boolean] <tt>transitionConfigurable</tt> field
    def transition_configurable; get_field("transitionConfigurable", TypeConverters::Boolean); end
    # @!attribute [r] transition_settings
    # @return [Hash] <tt>transitionSettings</tt> field
    def transition_settings; get_field("transitionSettings", TypeConverters::Object); end
    Requests::GetCurrentSceneTransition::Response = Responses::GetCurrentSceneTransition
  end
  # A response to <tt>SetCurrentSceneTransition</tt> request.
  # @see Requests::SetCurrentSceneTransition
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setcurrentscenetransition
  class SetCurrentSceneTransition < Response
    Requests::SetCurrentSceneTransition::Response = Responses::SetCurrentSceneTransition
  end
  # A response to <tt>SetCurrentSceneTransitionDuration</tt> request.
  # @see Requests::SetCurrentSceneTransitionDuration
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setcurrentscenetransitionduration
  class SetCurrentSceneTransitionDuration < Response
    Requests::SetCurrentSceneTransitionDuration::Response = Responses::SetCurrentSceneTransitionDuration
  end
  # A response to <tt>SetCurrentSceneTransitionSettings</tt> request.
  # @see Requests::SetCurrentSceneTransitionSettings
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setcurrentscenetransitionsettings
  class SetCurrentSceneTransitionSettings < Response
    Requests::SetCurrentSceneTransitionSettings::Response = Responses::SetCurrentSceneTransitionSettings
  end
  # A response to <tt>GetCurrentSceneTransitionCursor</tt> request.
  # @see Requests::GetCurrentSceneTransitionCursor
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getcurrentscenetransitioncursor
  class GetCurrentSceneTransitionCursor < Response
    # @!attribute [r] transition_cursor
    # @return [Numeric] <tt>transitionCursor</tt> field
    def transition_cursor; get_field("transitionCursor", TypeConverters::Number); end
    Requests::GetCurrentSceneTransitionCursor::Response = Responses::GetCurrentSceneTransitionCursor
  end
  # A response to <tt>TriggerStudioModeTransition</tt> request.
  # @see Requests::TriggerStudioModeTransition
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#triggerstudiomodetransition
  class TriggerStudioModeTransition < Response
    Requests::TriggerStudioModeTransition::Response = Responses::TriggerStudioModeTransition
  end
  # A response to <tt>SetTBarPosition</tt> request.
  # @see Requests::SetTBarPosition
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#settbarposition
  class SetTBarPosition < Response
    Requests::SetTBarPosition::Response = Responses::SetTBarPosition
  end
  # A response to <tt>GetStudioModeEnabled</tt> request.
  # @see Requests::GetStudioModeEnabled
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getstudiomodeenabled
  class GetStudioModeEnabled < Response
    # @!attribute [r] studio_mode_enabled
    # @return [Boolean] <tt>studioModeEnabled</tt> field
    def studio_mode_enabled; get_field("studioModeEnabled", TypeConverters::Boolean); end
    Requests::GetStudioModeEnabled::Response = Responses::GetStudioModeEnabled
  end
  # A response to <tt>SetStudioModeEnabled</tt> request.
  # @see Requests::SetStudioModeEnabled
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setstudiomodeenabled
  class SetStudioModeEnabled < Response
    Requests::SetStudioModeEnabled::Response = Responses::SetStudioModeEnabled
  end
  # A response to <tt>OpenInputPropertiesDialog</tt> request.
  # @see Requests::OpenInputPropertiesDialog
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#openinputpropertiesdialog
  class OpenInputPropertiesDialog < Response
    Requests::OpenInputPropertiesDialog::Response = Responses::OpenInputPropertiesDialog
  end
  # A response to <tt>OpenInputFiltersDialog</tt> request.
  # @see Requests::OpenInputFiltersDialog
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#openinputfiltersdialog
  class OpenInputFiltersDialog < Response
    Requests::OpenInputFiltersDialog::Response = Responses::OpenInputFiltersDialog
  end
  # A response to <tt>OpenInputInteractDialog</tt> request.
  # @see Requests::OpenInputInteractDialog
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#openinputinteractdialog
  class OpenInputInteractDialog < Response
    Requests::OpenInputInteractDialog::Response = Responses::OpenInputInteractDialog
  end
  # A response to <tt>GetMonitorList</tt> request.
  # @see Requests::GetMonitorList
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getmonitorlist
  class GetMonitorList < Response
    # @!attribute [r] monitors
    # @return [Array<Hash>] <tt>monitors</tt> field
    def monitors; get_field("monitors", TypeConverters::Array[TypeConverters::Object]); end
    Requests::GetMonitorList::Response = Responses::GetMonitorList
  end
end  # module Responses
module Mixins
module Event
  # Adds an event handler for <tt>CurrentSceneCollectionChanging</tt> event.
  # @param executor the executor on which the callback is invoked
  # @yieldparam event [Events::CurrentSceneCollectionChanging] the event object
  # @return [void]
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#currentscenecollectionchanging
  def on_current_scene_collection_changing(executor: default_executor, &listener)
    on("CurrentSceneCollectionChanging", executor: executor, &listener)
  end
  # Adds an event handler for <tt>CurrentSceneCollectionChanged</tt> event.
  # @param executor the executor on which the callback is invoked
  # @yieldparam event [Events::CurrentSceneCollectionChanged] the event object
  # @return [void]
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#currentscenecollectionchanged
  def on_current_scene_collection_changed(executor: default_executor, &listener)
    on("CurrentSceneCollectionChanged", executor: executor, &listener)
  end
  # Adds an event handler for <tt>SceneCollectionListChanged</tt> event.
  # @param executor the executor on which the callback is invoked
  # @yieldparam event [Events::SceneCollectionListChanged] the event object
  # @return [void]
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#scenecollectionlistchanged
  def on_scene_collection_list_changed(executor: default_executor, &listener)
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
  def on_source_filter_enable_state_changed(executor: default_executor, &listener)
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
  def on_input_audio_sync_offset_changed(executor: default_executor, &listener)
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
  def on_input_audio_monitor_type_changed(executor: default_executor, &listener)
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
  def on_scene_item_enable_state_changed(executor: default_executor, &listener)
    on("SceneItemEnableStateChanged", executor: executor, &listener)
  end
  # Adds an event handler for <tt>SceneItemLockStateChanged</tt> event.
  # @param executor the executor on which the callback is invoked
  # @yieldparam event [Events::SceneItemLockStateChanged] the event object
  # @return [void]
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#sceneitemlockstatechanged
  def on_scene_item_lock_state_changed(executor: default_executor, &listener)
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
  def on_current_program_scene_changed(executor: default_executor, &listener)
    on("CurrentProgramSceneChanged", executor: executor, &listener)
  end
  # Adds an event handler for <tt>CurrentPreviewSceneChanged</tt> event.
  # @param executor the executor on which the callback is invoked
  # @yieldparam event [Events::CurrentPreviewSceneChanged] the event object
  # @return [void]
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#currentpreviewscenechanged
  def on_current_preview_scene_changed(executor: default_executor, &listener)
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
  def on_current_scene_transition_changed(executor: default_executor, &listener)
    on("CurrentSceneTransitionChanged", executor: executor, &listener)
  end
  # Adds an event handler for <tt>CurrentSceneTransitionDurationChanged</tt> event.
  # @param executor the executor on which the callback is invoked
  # @yieldparam event [Events::CurrentSceneTransitionDurationChanged] the event object
  # @return [void]
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#currentscenetransitiondurationchanged
  def on_current_scene_transition_duration_changed(executor: default_executor, &listener)
    on("CurrentSceneTransitionDurationChanged", executor: executor, &listener)
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
end  # module Event
module Request
  # Sends <tt>GetPersistentData</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getpersistentdata
  # @param realm [String] <tt>realm</tt> field
  # @param slot_name [String] <tt>slotName</tt> field
  # @return [Future<Responses::GetPersistentData>]
  def get_persistent_data(realm:, slot_name:)
    send_request(Requests::GetPersistentData.new({"realm" => TypeConverters::String.as_json(realm), "slotName" => TypeConverters::String.as_json(slot_name)}))
  end
  # Sends <tt>SetPersistentData</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setpersistentdata
  # @param realm [String] <tt>realm</tt> field
  # @param slot_name [String] <tt>slotName</tt> field
  # @param slot_value [Object] <tt>slotValue</tt> field
  # @return [Future<Responses::SetPersistentData>]
  def set_persistent_data(realm:, slot_name:, slot_value:)
    send_request(Requests::SetPersistentData.new({"realm" => TypeConverters::String.as_json(realm), "slotName" => TypeConverters::String.as_json(slot_name), "slotValue" => TypeConverters::Any.as_json(slot_value)}))
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
    send_request(Requests::SetCurrentSceneCollection.new({"sceneCollectionName" => TypeConverters::String.as_json(scene_collection_name)}))
  end
  # Sends <tt>CreateSceneCollection</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#createscenecollection
  # @param scene_collection_name [String] <tt>sceneCollectionName</tt> field
  # @return [Future<Responses::CreateSceneCollection>]
  def create_scene_collection(scene_collection_name:)
    send_request(Requests::CreateSceneCollection.new({"sceneCollectionName" => TypeConverters::String.as_json(scene_collection_name)}))
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
    send_request(Requests::SetCurrentProfile.new({"profileName" => TypeConverters::String.as_json(profile_name)}))
  end
  # Sends <tt>CreateProfile</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#createprofile
  # @param profile_name [String] <tt>profileName</tt> field
  # @return [Future<Responses::CreateProfile>]
  def create_profile(profile_name:)
    send_request(Requests::CreateProfile.new({"profileName" => TypeConverters::String.as_json(profile_name)}))
  end
  # Sends <tt>RemoveProfile</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#removeprofile
  # @param profile_name [String] <tt>profileName</tt> field
  # @return [Future<Responses::RemoveProfile>]
  def remove_profile(profile_name:)
    send_request(Requests::RemoveProfile.new({"profileName" => TypeConverters::String.as_json(profile_name)}))
  end
  # Sends <tt>GetProfileParameter</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getprofileparameter
  # @param parameter_category [String] <tt>parameterCategory</tt> field
  # @param parameter_name [String] <tt>parameterName</tt> field
  # @return [Future<Responses::GetProfileParameter>]
  def get_profile_parameter(parameter_category:, parameter_name:)
    send_request(Requests::GetProfileParameter.new({"parameterCategory" => TypeConverters::String.as_json(parameter_category), "parameterName" => TypeConverters::String.as_json(parameter_name)}))
  end
  # Sends <tt>SetProfileParameter</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setprofileparameter
  # @param parameter_category [String] <tt>parameterCategory</tt> field
  # @param parameter_name [String] <tt>parameterName</tt> field
  # @param parameter_value [String] <tt>parameterValue</tt> field
  # @return [Future<Responses::SetProfileParameter>]
  def set_profile_parameter(parameter_category:, parameter_name:, parameter_value:)
    send_request(Requests::SetProfileParameter.new({"parameterCategory" => TypeConverters::String.as_json(parameter_category), "parameterName" => TypeConverters::String.as_json(parameter_name), "parameterValue" => TypeConverters::String.as_json(parameter_value)}))
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
  def set_video_settings(fps_numerator: nil, fps_denominator: nil, base_width: nil, base_height: nil, output_width: nil, output_height: nil)
    send_request(Requests::SetVideoSettings.new({"fpsNumerator" => TypeConverters::Optional[TypeConverters::Number].as_json(fps_numerator), "fpsDenominator" => TypeConverters::Optional[TypeConverters::Number].as_json(fps_denominator), "baseWidth" => TypeConverters::Optional[TypeConverters::Number].as_json(base_width), "baseHeight" => TypeConverters::Optional[TypeConverters::Number].as_json(base_height), "outputWidth" => TypeConverters::Optional[TypeConverters::Number].as_json(output_width), "outputHeight" => TypeConverters::Optional[TypeConverters::Number].as_json(output_height)}))
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
  def set_stream_service_settings(stream_service_type:, stream_service_settings:)
    send_request(Requests::SetStreamServiceSettings.new({"streamServiceType" => TypeConverters::String.as_json(stream_service_type), "streamServiceSettings" => TypeConverters::Object.as_json(stream_service_settings)}))
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
    send_request(Requests::GetSourceFilterList.new({"sourceName" => TypeConverters::String.as_json(source_name)}))
  end
  # Sends <tt>GetSourceFilterDefaultSettings</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getsourcefilterdefaultsettings
  # @param filter_kind [String] <tt>filterKind</tt> field
  # @return [Future<Responses::GetSourceFilterDefaultSettings>]
  def get_source_filter_default_settings(filter_kind:)
    send_request(Requests::GetSourceFilterDefaultSettings.new({"filterKind" => TypeConverters::String.as_json(filter_kind)}))
  end
  # Sends <tt>CreateSourceFilter</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#createsourcefilter
  # @param source_name [String] <tt>sourceName</tt> field
  # @param filter_name [String] <tt>filterName</tt> field
  # @param filter_kind [String] <tt>filterKind</tt> field
  # @param filter_settings [Hash, nil] <tt>filterSettings</tt> field
  # @return [Future<Responses::CreateSourceFilter>]
  def create_source_filter(source_name:, filter_name:, filter_kind:, filter_settings: nil)
    send_request(Requests::CreateSourceFilter.new({"sourceName" => TypeConverters::String.as_json(source_name), "filterName" => TypeConverters::String.as_json(filter_name), "filterKind" => TypeConverters::String.as_json(filter_kind), "filterSettings" => TypeConverters::Optional[TypeConverters::Object].as_json(filter_settings)}))
  end
  # Sends <tt>RemoveSourceFilter</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#removesourcefilter
  # @param source_name [String] <tt>sourceName</tt> field
  # @param filter_name [String] <tt>filterName</tt> field
  # @return [Future<Responses::RemoveSourceFilter>]
  def remove_source_filter(source_name:, filter_name:)
    send_request(Requests::RemoveSourceFilter.new({"sourceName" => TypeConverters::String.as_json(source_name), "filterName" => TypeConverters::String.as_json(filter_name)}))
  end
  # Sends <tt>SetSourceFilterName</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setsourcefiltername
  # @param source_name [String] <tt>sourceName</tt> field
  # @param filter_name [String] <tt>filterName</tt> field
  # @param new_filter_name [String] <tt>newFilterName</tt> field
  # @return [Future<Responses::SetSourceFilterName>]
  def set_source_filter_name(source_name:, filter_name:, new_filter_name:)
    send_request(Requests::SetSourceFilterName.new({"sourceName" => TypeConverters::String.as_json(source_name), "filterName" => TypeConverters::String.as_json(filter_name), "newFilterName" => TypeConverters::String.as_json(new_filter_name)}))
  end
  # Sends <tt>GetSourceFilter</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getsourcefilter
  # @param source_name [String] <tt>sourceName</tt> field
  # @param filter_name [String] <tt>filterName</tt> field
  # @return [Future<Responses::GetSourceFilter>]
  def get_source_filter(source_name:, filter_name:)
    send_request(Requests::GetSourceFilter.new({"sourceName" => TypeConverters::String.as_json(source_name), "filterName" => TypeConverters::String.as_json(filter_name)}))
  end
  # Sends <tt>SetSourceFilterIndex</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setsourcefilterindex
  # @param source_name [String] <tt>sourceName</tt> field
  # @param filter_name [String] <tt>filterName</tt> field
  # @param filter_index [Numeric] <tt>filterIndex</tt> field
  # @return [Future<Responses::SetSourceFilterIndex>]
  def set_source_filter_index(source_name:, filter_name:, filter_index:)
    send_request(Requests::SetSourceFilterIndex.new({"sourceName" => TypeConverters::String.as_json(source_name), "filterName" => TypeConverters::String.as_json(filter_name), "filterIndex" => TypeConverters::Number.as_json(filter_index)}))
  end
  # Sends <tt>SetSourceFilterSettings</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setsourcefiltersettings
  # @param source_name [String] <tt>sourceName</tt> field
  # @param filter_name [String] <tt>filterName</tt> field
  # @param filter_settings [Hash] <tt>filterSettings</tt> field
  # @param overlay [Boolean, nil] <tt>overlay</tt> field
  # @return [Future<Responses::SetSourceFilterSettings>]
  def set_source_filter_settings(source_name:, filter_name:, filter_settings:, overlay: nil)
    send_request(Requests::SetSourceFilterSettings.new({"sourceName" => TypeConverters::String.as_json(source_name), "filterName" => TypeConverters::String.as_json(filter_name), "filterSettings" => TypeConverters::Object.as_json(filter_settings), "overlay" => TypeConverters::Optional[TypeConverters::Boolean].as_json(overlay)}))
  end
  # Sends <tt>SetSourceFilterEnabled</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setsourcefilterenabled
  # @param source_name [String] <tt>sourceName</tt> field
  # @param filter_name [String] <tt>filterName</tt> field
  # @param filter_enabled [Boolean] <tt>filterEnabled</tt> field
  # @return [Future<Responses::SetSourceFilterEnabled>]
  def set_source_filter_enabled(source_name:, filter_name:, filter_enabled:)
    send_request(Requests::SetSourceFilterEnabled.new({"sourceName" => TypeConverters::String.as_json(source_name), "filterName" => TypeConverters::String.as_json(filter_name), "filterEnabled" => TypeConverters::Boolean.as_json(filter_enabled)}))
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
    send_request(Requests::BroadcastCustomEvent.new({"eventData" => TypeConverters::Object.as_json(event_data)}))
  end
  # Sends <tt>CallVendorRequest</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#callvendorrequest
  # @param vendor_name [String] <tt>vendorName</tt> field
  # @param request_type [String] <tt>requestType</tt> field
  # @param request_data [Hash, nil] <tt>requestData</tt> field
  # @return [Future<Responses::CallVendorRequest>]
  def call_vendor_request(vendor_name:, request_type:, request_data: nil)
    send_request(Requests::CallVendorRequest.new({"vendorName" => TypeConverters::String.as_json(vendor_name), "requestType" => TypeConverters::String.as_json(request_type), "requestData" => TypeConverters::Optional[TypeConverters::Object].as_json(request_data)}))
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
    send_request(Requests::TriggerHotkeyByName.new({"hotkeyName" => TypeConverters::String.as_json(hotkey_name)}))
  end
  # Sends <tt>TriggerHotkeyByKeySequence</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#triggerhotkeybykeysequence
  # @param key_id [String, nil] <tt>keyId</tt> field
  # @param key_modifiers [Hash, nil] <tt>keyModifiers</tt> field
  # @return [Future<Responses::TriggerHotkeyByKeySequence>]
  def trigger_hotkey_by_key_sequence(key_id: nil, key_modifiers: nil)
    send_request(Requests::TriggerHotkeyByKeySequence.new({"keyId" => TypeConverters::Optional[TypeConverters::String].as_json(key_id), "keyModifiers" => TypeConverters::Optional[TypeConverters::Object[{:shift=>{:type=>TypeConverters::Optional[TypeConverters::Boolean], :wire_name=>"shift"}, :control=>{:type=>TypeConverters::Optional[TypeConverters::Boolean], :wire_name=>"control"}, :alt=>{:type=>TypeConverters::Optional[TypeConverters::Boolean], :wire_name=>"alt"}, :command=>{:type=>TypeConverters::Optional[TypeConverters::Boolean], :wire_name=>"command"}}]].as_json(key_modifiers)}))
  end
  # Sends <tt>Sleep</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#sleep
  # @param sleep_millis [Numeric] <tt>sleepMillis</tt> field
  # @param sleep_frames [Numeric] <tt>sleepFrames</tt> field
  # @return [Future<Responses::Sleep>]
  def sleep(sleep_millis:, sleep_frames:)
    send_request(Requests::Sleep.new({"sleepMillis" => TypeConverters::Number.as_json(sleep_millis), "sleepFrames" => TypeConverters::Number.as_json(sleep_frames)}))
  end
  # Sends <tt>GetInputList</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getinputlist
  # @param input_kind [String, nil] <tt>inputKind</tt> field
  # @return [Future<Responses::GetInputList>]
  def get_input_list(input_kind: nil)
    send_request(Requests::GetInputList.new({"inputKind" => TypeConverters::Optional[TypeConverters::String].as_json(input_kind)}))
  end
  # Sends <tt>GetInputKindList</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getinputkindlist
  # @param unversioned [Boolean, nil] <tt>unversioned</tt> field
  # @return [Future<Responses::GetInputKindList>]
  def get_input_kind_list(unversioned: nil)
    send_request(Requests::GetInputKindList.new({"unversioned" => TypeConverters::Optional[TypeConverters::Boolean].as_json(unversioned)}))
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
  def create_input(scene_name:, input_name:, input_kind:, input_settings: nil, scene_item_enabled: nil)
    send_request(Requests::CreateInput.new({"sceneName" => TypeConverters::String.as_json(scene_name), "inputName" => TypeConverters::String.as_json(input_name), "inputKind" => TypeConverters::String.as_json(input_kind), "inputSettings" => TypeConverters::Optional[TypeConverters::Object].as_json(input_settings), "sceneItemEnabled" => TypeConverters::Optional[TypeConverters::Boolean].as_json(scene_item_enabled)}))
  end
  # Sends <tt>RemoveInput</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#removeinput
  # @param input_name [String] <tt>inputName</tt> field
  # @return [Future<Responses::RemoveInput>]
  def remove_input(input_name:)
    send_request(Requests::RemoveInput.new({"inputName" => TypeConverters::String.as_json(input_name)}))
  end
  # Sends <tt>SetInputName</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setinputname
  # @param input_name [String] <tt>inputName</tt> field
  # @param new_input_name [String] <tt>newInputName</tt> field
  # @return [Future<Responses::SetInputName>]
  def set_input_name(input_name:, new_input_name:)
    send_request(Requests::SetInputName.new({"inputName" => TypeConverters::String.as_json(input_name), "newInputName" => TypeConverters::String.as_json(new_input_name)}))
  end
  # Sends <tt>GetInputDefaultSettings</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getinputdefaultsettings
  # @param input_kind [String] <tt>inputKind</tt> field
  # @return [Future<Responses::GetInputDefaultSettings>]
  def get_input_default_settings(input_kind:)
    send_request(Requests::GetInputDefaultSettings.new({"inputKind" => TypeConverters::String.as_json(input_kind)}))
  end
  # Sends <tt>GetInputSettings</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getinputsettings
  # @param input_name [String] <tt>inputName</tt> field
  # @return [Future<Responses::GetInputSettings>]
  def get_input_settings(input_name:)
    send_request(Requests::GetInputSettings.new({"inputName" => TypeConverters::String.as_json(input_name)}))
  end
  # Sends <tt>SetInputSettings</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setinputsettings
  # @param input_name [String] <tt>inputName</tt> field
  # @param input_settings [Hash] <tt>inputSettings</tt> field
  # @param overlay [Boolean, nil] <tt>overlay</tt> field
  # @return [Future<Responses::SetInputSettings>]
  def set_input_settings(input_name:, input_settings:, overlay: nil)
    send_request(Requests::SetInputSettings.new({"inputName" => TypeConverters::String.as_json(input_name), "inputSettings" => TypeConverters::Object.as_json(input_settings), "overlay" => TypeConverters::Optional[TypeConverters::Boolean].as_json(overlay)}))
  end
  # Sends <tt>GetInputMute</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getinputmute
  # @param input_name [String] <tt>inputName</tt> field
  # @return [Future<Responses::GetInputMute>]
  def get_input_mute(input_name:)
    send_request(Requests::GetInputMute.new({"inputName" => TypeConverters::String.as_json(input_name)}))
  end
  # Sends <tt>SetInputMute</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setinputmute
  # @param input_name [String] <tt>inputName</tt> field
  # @param input_muted [Boolean] <tt>inputMuted</tt> field
  # @return [Future<Responses::SetInputMute>]
  def set_input_mute(input_name:, input_muted:)
    send_request(Requests::SetInputMute.new({"inputName" => TypeConverters::String.as_json(input_name), "inputMuted" => TypeConverters::Boolean.as_json(input_muted)}))
  end
  # Sends <tt>ToggleInputMute</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#toggleinputmute
  # @param input_name [String] <tt>inputName</tt> field
  # @return [Future<Responses::ToggleInputMute>]
  def toggle_input_mute(input_name:)
    send_request(Requests::ToggleInputMute.new({"inputName" => TypeConverters::String.as_json(input_name)}))
  end
  # Sends <tt>GetInputVolume</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getinputvolume
  # @param input_name [String] <tt>inputName</tt> field
  # @return [Future<Responses::GetInputVolume>]
  def get_input_volume(input_name:)
    send_request(Requests::GetInputVolume.new({"inputName" => TypeConverters::String.as_json(input_name)}))
  end
  # Sends <tt>SetInputVolume</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setinputvolume
  # @param input_name [String] <tt>inputName</tt> field
  # @param input_volume_mul [Numeric, nil] <tt>inputVolumeMul</tt> field
  # @param input_volume_db [Numeric, nil] <tt>inputVolumeDb</tt> field
  # @return [Future<Responses::SetInputVolume>]
  def set_input_volume(input_name:, input_volume_mul: nil, input_volume_db: nil)
    send_request(Requests::SetInputVolume.new({"inputName" => TypeConverters::String.as_json(input_name), "inputVolumeMul" => TypeConverters::Optional[TypeConverters::Number].as_json(input_volume_mul), "inputVolumeDb" => TypeConverters::Optional[TypeConverters::Number].as_json(input_volume_db)}))
  end
  # Sends <tt>GetInputAudioBalance</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getinputaudiobalance
  # @param input_name [String] <tt>inputName</tt> field
  # @return [Future<Responses::GetInputAudioBalance>]
  def get_input_audio_balance(input_name:)
    send_request(Requests::GetInputAudioBalance.new({"inputName" => TypeConverters::String.as_json(input_name)}))
  end
  # Sends <tt>SetInputAudioBalance</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setinputaudiobalance
  # @param input_name [String] <tt>inputName</tt> field
  # @param input_audio_balance [Numeric] <tt>inputAudioBalance</tt> field
  # @return [Future<Responses::SetInputAudioBalance>]
  def set_input_audio_balance(input_name:, input_audio_balance:)
    send_request(Requests::SetInputAudioBalance.new({"inputName" => TypeConverters::String.as_json(input_name), "inputAudioBalance" => TypeConverters::Number.as_json(input_audio_balance)}))
  end
  # Sends <tt>GetInputAudioSyncOffset</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getinputaudiosyncoffset
  # @param input_name [String] <tt>inputName</tt> field
  # @return [Future<Responses::GetInputAudioSyncOffset>]
  def get_input_audio_sync_offset(input_name:)
    send_request(Requests::GetInputAudioSyncOffset.new({"inputName" => TypeConverters::String.as_json(input_name)}))
  end
  # Sends <tt>SetInputAudioSyncOffset</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setinputaudiosyncoffset
  # @param input_name [String] <tt>inputName</tt> field
  # @param input_audio_sync_offset [Numeric] <tt>inputAudioSyncOffset</tt> field
  # @return [Future<Responses::SetInputAudioSyncOffset>]
  def set_input_audio_sync_offset(input_name:, input_audio_sync_offset:)
    send_request(Requests::SetInputAudioSyncOffset.new({"inputName" => TypeConverters::String.as_json(input_name), "inputAudioSyncOffset" => TypeConverters::Number.as_json(input_audio_sync_offset)}))
  end
  # Sends <tt>GetInputAudioMonitorType</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getinputaudiomonitortype
  # @param input_name [String] <tt>inputName</tt> field
  # @return [Future<Responses::GetInputAudioMonitorType>]
  def get_input_audio_monitor_type(input_name:)
    send_request(Requests::GetInputAudioMonitorType.new({"inputName" => TypeConverters::String.as_json(input_name)}))
  end
  # Sends <tt>SetInputAudioMonitorType</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setinputaudiomonitortype
  # @param input_name [String] <tt>inputName</tt> field
  # @param monitor_type [String] <tt>monitorType</tt> field
  # @return [Future<Responses::SetInputAudioMonitorType>]
  def set_input_audio_monitor_type(input_name:, monitor_type:)
    send_request(Requests::SetInputAudioMonitorType.new({"inputName" => TypeConverters::String.as_json(input_name), "monitorType" => TypeConverters::String.as_json(monitor_type)}))
  end
  # Sends <tt>GetInputAudioTracks</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getinputaudiotracks
  # @param input_name [String] <tt>inputName</tt> field
  # @return [Future<Responses::GetInputAudioTracks>]
  def get_input_audio_tracks(input_name:)
    send_request(Requests::GetInputAudioTracks.new({"inputName" => TypeConverters::String.as_json(input_name)}))
  end
  # Sends <tt>SetInputAudioTracks</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setinputaudiotracks
  # @param input_name [String] <tt>inputName</tt> field
  # @param input_audio_tracks [Hash] <tt>inputAudioTracks</tt> field
  # @return [Future<Responses::SetInputAudioTracks>]
  def set_input_audio_tracks(input_name:, input_audio_tracks:)
    send_request(Requests::SetInputAudioTracks.new({"inputName" => TypeConverters::String.as_json(input_name), "inputAudioTracks" => TypeConverters::Object.as_json(input_audio_tracks)}))
  end
  # Sends <tt>GetInputPropertiesListPropertyItems</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getinputpropertieslistpropertyitems
  # @param input_name [String] <tt>inputName</tt> field
  # @param property_name [String] <tt>propertyName</tt> field
  # @return [Future<Responses::GetInputPropertiesListPropertyItems>]
  def get_input_properties_list_property_items(input_name:, property_name:)
    send_request(Requests::GetInputPropertiesListPropertyItems.new({"inputName" => TypeConverters::String.as_json(input_name), "propertyName" => TypeConverters::String.as_json(property_name)}))
  end
  # Sends <tt>PressInputPropertiesButton</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#pressinputpropertiesbutton
  # @param input_name [String] <tt>inputName</tt> field
  # @param property_name [String] <tt>propertyName</tt> field
  # @return [Future<Responses::PressInputPropertiesButton>]
  def press_input_properties_button(input_name:, property_name:)
    send_request(Requests::PressInputPropertiesButton.new({"inputName" => TypeConverters::String.as_json(input_name), "propertyName" => TypeConverters::String.as_json(property_name)}))
  end
  # Sends <tt>GetMediaInputStatus</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getmediainputstatus
  # @param input_name [String] <tt>inputName</tt> field
  # @return [Future<Responses::GetMediaInputStatus>]
  def get_media_input_status(input_name:)
    send_request(Requests::GetMediaInputStatus.new({"inputName" => TypeConverters::String.as_json(input_name)}))
  end
  # Sends <tt>SetMediaInputCursor</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setmediainputcursor
  # @param input_name [String] <tt>inputName</tt> field
  # @param media_cursor [Numeric] <tt>mediaCursor</tt> field
  # @return [Future<Responses::SetMediaInputCursor>]
  def set_media_input_cursor(input_name:, media_cursor:)
    send_request(Requests::SetMediaInputCursor.new({"inputName" => TypeConverters::String.as_json(input_name), "mediaCursor" => TypeConverters::Number.as_json(media_cursor)}))
  end
  # Sends <tt>OffsetMediaInputCursor</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#offsetmediainputcursor
  # @param input_name [String] <tt>inputName</tt> field
  # @param media_cursor_offset [Numeric] <tt>mediaCursorOffset</tt> field
  # @return [Future<Responses::OffsetMediaInputCursor>]
  def offset_media_input_cursor(input_name:, media_cursor_offset:)
    send_request(Requests::OffsetMediaInputCursor.new({"inputName" => TypeConverters::String.as_json(input_name), "mediaCursorOffset" => TypeConverters::Number.as_json(media_cursor_offset)}))
  end
  # Sends <tt>TriggerMediaInputAction</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#triggermediainputaction
  # @param input_name [String] <tt>inputName</tt> field
  # @param media_action [String] <tt>mediaAction</tt> field
  # @return [Future<Responses::TriggerMediaInputAction>]
  def trigger_media_input_action(input_name:, media_action:)
    send_request(Requests::TriggerMediaInputAction.new({"inputName" => TypeConverters::String.as_json(input_name), "mediaAction" => TypeConverters::String.as_json(media_action)}))
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
    send_request(Requests::GetSceneItemList.new({"sceneName" => TypeConverters::String.as_json(scene_name)}))
  end
  # Sends <tt>GetGroupItemList</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getgroupitemlist
  # @param scene_name [String] <tt>sceneName</tt> field
  # @return [Future<Responses::GetGroupItemList>]
  def get_group_item_list(scene_name:)
    send_request(Requests::GetGroupItemList.new({"sceneName" => TypeConverters::String.as_json(scene_name)}))
  end
  # Sends <tt>GetSceneItemId</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getsceneitemid
  # @param scene_name [String] <tt>sceneName</tt> field
  # @param source_name [String] <tt>sourceName</tt> field
  # @param search_offset [Numeric, nil] <tt>searchOffset</tt> field
  # @return [Future<Responses::GetSceneItemId>]
  def get_scene_item_id(scene_name:, source_name:, search_offset: nil)
    send_request(Requests::GetSceneItemId.new({"sceneName" => TypeConverters::String.as_json(scene_name), "sourceName" => TypeConverters::String.as_json(source_name), "searchOffset" => TypeConverters::Optional[TypeConverters::Number].as_json(search_offset)}))
  end
  # Sends <tt>CreateSceneItem</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#createsceneitem
  # @param scene_name [String] <tt>sceneName</tt> field
  # @param source_name [String] <tt>sourceName</tt> field
  # @param scene_item_enabled [Boolean, nil] <tt>sceneItemEnabled</tt> field
  # @return [Future<Responses::CreateSceneItem>]
  def create_scene_item(scene_name:, source_name:, scene_item_enabled: nil)
    send_request(Requests::CreateSceneItem.new({"sceneName" => TypeConverters::String.as_json(scene_name), "sourceName" => TypeConverters::String.as_json(source_name), "sceneItemEnabled" => TypeConverters::Optional[TypeConverters::Boolean].as_json(scene_item_enabled)}))
  end
  # Sends <tt>RemoveSceneItem</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#removesceneitem
  # @param scene_name [String] <tt>sceneName</tt> field
  # @param scene_item_id [Numeric] <tt>sceneItemId</tt> field
  # @return [Future<Responses::RemoveSceneItem>]
  def remove_scene_item(scene_name:, scene_item_id:)
    send_request(Requests::RemoveSceneItem.new({"sceneName" => TypeConverters::String.as_json(scene_name), "sceneItemId" => TypeConverters::Number.as_json(scene_item_id)}))
  end
  # Sends <tt>DuplicateSceneItem</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#duplicatesceneitem
  # @param scene_name [String] <tt>sceneName</tt> field
  # @param scene_item_id [Numeric] <tt>sceneItemId</tt> field
  # @param destination_scene_name [String, nil] <tt>destinationSceneName</tt> field
  # @return [Future<Responses::DuplicateSceneItem>]
  def duplicate_scene_item(scene_name:, scene_item_id:, destination_scene_name: nil)
    send_request(Requests::DuplicateSceneItem.new({"sceneName" => TypeConverters::String.as_json(scene_name), "sceneItemId" => TypeConverters::Number.as_json(scene_item_id), "destinationSceneName" => TypeConverters::Optional[TypeConverters::String].as_json(destination_scene_name)}))
  end
  # Sends <tt>GetSceneItemTransform</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getsceneitemtransform
  # @param scene_name [String] <tt>sceneName</tt> field
  # @param scene_item_id [Numeric] <tt>sceneItemId</tt> field
  # @return [Future<Responses::GetSceneItemTransform>]
  def get_scene_item_transform(scene_name:, scene_item_id:)
    send_request(Requests::GetSceneItemTransform.new({"sceneName" => TypeConverters::String.as_json(scene_name), "sceneItemId" => TypeConverters::Number.as_json(scene_item_id)}))
  end
  # Sends <tt>SetSceneItemTransform</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setsceneitemtransform
  # @param scene_name [String] <tt>sceneName</tt> field
  # @param scene_item_id [Numeric] <tt>sceneItemId</tt> field
  # @param scene_item_transform [Hash] <tt>sceneItemTransform</tt> field
  # @return [Future<Responses::SetSceneItemTransform>]
  def set_scene_item_transform(scene_name:, scene_item_id:, scene_item_transform:)
    send_request(Requests::SetSceneItemTransform.new({"sceneName" => TypeConverters::String.as_json(scene_name), "sceneItemId" => TypeConverters::Number.as_json(scene_item_id), "sceneItemTransform" => TypeConverters::Object.as_json(scene_item_transform)}))
  end
  # Sends <tt>GetSceneItemEnabled</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getsceneitemenabled
  # @param scene_name [String] <tt>sceneName</tt> field
  # @param scene_item_id [Numeric] <tt>sceneItemId</tt> field
  # @return [Future<Responses::GetSceneItemEnabled>]
  def get_scene_item_enabled(scene_name:, scene_item_id:)
    send_request(Requests::GetSceneItemEnabled.new({"sceneName" => TypeConverters::String.as_json(scene_name), "sceneItemId" => TypeConverters::Number.as_json(scene_item_id)}))
  end
  # Sends <tt>SetSceneItemEnabled</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setsceneitemenabled
  # @param scene_name [String] <tt>sceneName</tt> field
  # @param scene_item_id [Numeric] <tt>sceneItemId</tt> field
  # @param scene_item_enabled [Boolean] <tt>sceneItemEnabled</tt> field
  # @return [Future<Responses::SetSceneItemEnabled>]
  def set_scene_item_enabled(scene_name:, scene_item_id:, scene_item_enabled:)
    send_request(Requests::SetSceneItemEnabled.new({"sceneName" => TypeConverters::String.as_json(scene_name), "sceneItemId" => TypeConverters::Number.as_json(scene_item_id), "sceneItemEnabled" => TypeConverters::Boolean.as_json(scene_item_enabled)}))
  end
  # Sends <tt>GetSceneItemLocked</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getsceneitemlocked
  # @param scene_name [String] <tt>sceneName</tt> field
  # @param scene_item_id [Numeric] <tt>sceneItemId</tt> field
  # @return [Future<Responses::GetSceneItemLocked>]
  def get_scene_item_locked(scene_name:, scene_item_id:)
    send_request(Requests::GetSceneItemLocked.new({"sceneName" => TypeConverters::String.as_json(scene_name), "sceneItemId" => TypeConverters::Number.as_json(scene_item_id)}))
  end
  # Sends <tt>SetSceneItemLocked</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setsceneitemlocked
  # @param scene_name [String] <tt>sceneName</tt> field
  # @param scene_item_id [Numeric] <tt>sceneItemId</tt> field
  # @param scene_item_locked [Boolean] <tt>sceneItemLocked</tt> field
  # @return [Future<Responses::SetSceneItemLocked>]
  def set_scene_item_locked(scene_name:, scene_item_id:, scene_item_locked:)
    send_request(Requests::SetSceneItemLocked.new({"sceneName" => TypeConverters::String.as_json(scene_name), "sceneItemId" => TypeConverters::Number.as_json(scene_item_id), "sceneItemLocked" => TypeConverters::Boolean.as_json(scene_item_locked)}))
  end
  # Sends <tt>GetSceneItemIndex</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getsceneitemindex
  # @param scene_name [String] <tt>sceneName</tt> field
  # @param scene_item_id [Numeric] <tt>sceneItemId</tt> field
  # @return [Future<Responses::GetSceneItemIndex>]
  def get_scene_item_index(scene_name:, scene_item_id:)
    send_request(Requests::GetSceneItemIndex.new({"sceneName" => TypeConverters::String.as_json(scene_name), "sceneItemId" => TypeConverters::Number.as_json(scene_item_id)}))
  end
  # Sends <tt>SetSceneItemIndex</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setsceneitemindex
  # @param scene_name [String] <tt>sceneName</tt> field
  # @param scene_item_id [Numeric] <tt>sceneItemId</tt> field
  # @param scene_item_index [Numeric] <tt>sceneItemIndex</tt> field
  # @return [Future<Responses::SetSceneItemIndex>]
  def set_scene_item_index(scene_name:, scene_item_id:, scene_item_index:)
    send_request(Requests::SetSceneItemIndex.new({"sceneName" => TypeConverters::String.as_json(scene_name), "sceneItemId" => TypeConverters::Number.as_json(scene_item_id), "sceneItemIndex" => TypeConverters::Number.as_json(scene_item_index)}))
  end
  # Sends <tt>GetSceneItemBlendMode</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getsceneitemblendmode
  # @param scene_name [String] <tt>sceneName</tt> field
  # @param scene_item_id [Numeric] <tt>sceneItemId</tt> field
  # @return [Future<Responses::GetSceneItemBlendMode>]
  def get_scene_item_blend_mode(scene_name:, scene_item_id:)
    send_request(Requests::GetSceneItemBlendMode.new({"sceneName" => TypeConverters::String.as_json(scene_name), "sceneItemId" => TypeConverters::Number.as_json(scene_item_id)}))
  end
  # Sends <tt>SetSceneItemBlendMode</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setsceneitemblendmode
  # @param scene_name [String] <tt>sceneName</tt> field
  # @param scene_item_id [Numeric] <tt>sceneItemId</tt> field
  # @param scene_item_blend_mode [String] <tt>sceneItemBlendMode</tt> field
  # @return [Future<Responses::SetSceneItemBlendMode>]
  def set_scene_item_blend_mode(scene_name:, scene_item_id:, scene_item_blend_mode:)
    send_request(Requests::SetSceneItemBlendMode.new({"sceneName" => TypeConverters::String.as_json(scene_name), "sceneItemId" => TypeConverters::Number.as_json(scene_item_id), "sceneItemBlendMode" => TypeConverters::String.as_json(scene_item_blend_mode)}))
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
    send_request(Requests::SetCurrentProgramScene.new({"sceneName" => TypeConverters::String.as_json(scene_name)}))
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
    send_request(Requests::SetCurrentPreviewScene.new({"sceneName" => TypeConverters::String.as_json(scene_name)}))
  end
  # Sends <tt>CreateScene</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#createscene
  # @param scene_name [String] <tt>sceneName</tt> field
  # @return [Future<Responses::CreateScene>]
  def create_scene(scene_name:)
    send_request(Requests::CreateScene.new({"sceneName" => TypeConverters::String.as_json(scene_name)}))
  end
  # Sends <tt>RemoveScene</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#removescene
  # @param scene_name [String] <tt>sceneName</tt> field
  # @return [Future<Responses::RemoveScene>]
  def remove_scene(scene_name:)
    send_request(Requests::RemoveScene.new({"sceneName" => TypeConverters::String.as_json(scene_name)}))
  end
  # Sends <tt>SetSceneName</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setscenename
  # @param scene_name [String] <tt>sceneName</tt> field
  # @param new_scene_name [String] <tt>newSceneName</tt> field
  # @return [Future<Responses::SetSceneName>]
  def set_scene_name(scene_name:, new_scene_name:)
    send_request(Requests::SetSceneName.new({"sceneName" => TypeConverters::String.as_json(scene_name), "newSceneName" => TypeConverters::String.as_json(new_scene_name)}))
  end
  # Sends <tt>GetSceneSceneTransitionOverride</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getscenescenetransitionoverride
  # @param scene_name [String] <tt>sceneName</tt> field
  # @return [Future<Responses::GetSceneSceneTransitionOverride>]
  def get_scene_scene_transition_override(scene_name:)
    send_request(Requests::GetSceneSceneTransitionOverride.new({"sceneName" => TypeConverters::String.as_json(scene_name)}))
  end
  # Sends <tt>SetSceneSceneTransitionOverride</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setscenescenetransitionoverride
  # @param scene_name [String] <tt>sceneName</tt> field
  # @param transition_name [String, nil] <tt>transitionName</tt> field
  # @param transition_duration [Numeric, nil] <tt>transitionDuration</tt> field
  # @return [Future<Responses::SetSceneSceneTransitionOverride>]
  def set_scene_scene_transition_override(scene_name:, transition_name: nil, transition_duration: nil)
    send_request(Requests::SetSceneSceneTransitionOverride.new({"sceneName" => TypeConverters::String.as_json(scene_name), "transitionName" => TypeConverters::Optional[TypeConverters::String].as_json(transition_name), "transitionDuration" => TypeConverters::Optional[TypeConverters::Number].as_json(transition_duration)}))
  end
  # Sends <tt>GetSourceActive</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getsourceactive
  # @param source_name [String] <tt>sourceName</tt> field
  # @return [Future<Responses::GetSourceActive>]
  def get_source_active(source_name:)
    send_request(Requests::GetSourceActive.new({"sourceName" => TypeConverters::String.as_json(source_name)}))
  end
  # Sends <tt>GetSourceScreenshot</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getsourcescreenshot
  # @param source_name [String] <tt>sourceName</tt> field
  # @param image_format [String] <tt>imageFormat</tt> field
  # @param image_width [Numeric, nil] <tt>imageWidth</tt> field
  # @param image_height [Numeric, nil] <tt>imageHeight</tt> field
  # @param image_compression_quality [Numeric, nil] <tt>imageCompressionQuality</tt> field
  # @return [Future<Responses::GetSourceScreenshot>]
  def get_source_screenshot(source_name:, image_format:, image_width: nil, image_height: nil, image_compression_quality: nil)
    send_request(Requests::GetSourceScreenshot.new({"sourceName" => TypeConverters::String.as_json(source_name), "imageFormat" => TypeConverters::String.as_json(image_format), "imageWidth" => TypeConverters::Optional[TypeConverters::Number].as_json(image_width), "imageHeight" => TypeConverters::Optional[TypeConverters::Number].as_json(image_height), "imageCompressionQuality" => TypeConverters::Optional[TypeConverters::Number].as_json(image_compression_quality)}))
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
  def save_source_screenshot(source_name:, image_format:, image_file_path:, image_width: nil, image_height: nil, image_compression_quality: nil)
    send_request(Requests::SaveSourceScreenshot.new({"sourceName" => TypeConverters::String.as_json(source_name), "imageFormat" => TypeConverters::String.as_json(image_format), "imageFilePath" => TypeConverters::String.as_json(image_file_path), "imageWidth" => TypeConverters::Optional[TypeConverters::Number].as_json(image_width), "imageHeight" => TypeConverters::Optional[TypeConverters::Number].as_json(image_height), "imageCompressionQuality" => TypeConverters::Optional[TypeConverters::Number].as_json(image_compression_quality)}))
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
    send_request(Requests::SendStreamCaption.new({"captionText" => TypeConverters::String.as_json(caption_text)}))
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
    send_request(Requests::SetCurrentSceneTransition.new({"transitionName" => TypeConverters::String.as_json(transition_name)}))
  end
  # Sends <tt>SetCurrentSceneTransitionDuration</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setcurrentscenetransitionduration
  # @param transition_duration [Numeric] <tt>transitionDuration</tt> field
  # @return [Future<Responses::SetCurrentSceneTransitionDuration>]
  def set_current_scene_transition_duration(transition_duration:)
    send_request(Requests::SetCurrentSceneTransitionDuration.new({"transitionDuration" => TypeConverters::Number.as_json(transition_duration)}))
  end
  # Sends <tt>SetCurrentSceneTransitionSettings</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#setcurrentscenetransitionsettings
  # @param transition_settings [Hash] <tt>transitionSettings</tt> field
  # @param overlay [Boolean, nil] <tt>overlay</tt> field
  # @return [Future<Responses::SetCurrentSceneTransitionSettings>]
  def set_current_scene_transition_settings(transition_settings:, overlay: nil)
    send_request(Requests::SetCurrentSceneTransitionSettings.new({"transitionSettings" => TypeConverters::Object.as_json(transition_settings), "overlay" => TypeConverters::Optional[TypeConverters::Boolean].as_json(overlay)}))
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
    send_request(Requests::SetTBarPosition.new({"position" => TypeConverters::Number.as_json(position), "release" => TypeConverters::Optional[TypeConverters::Boolean].as_json(release)}))
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
    send_request(Requests::SetStudioModeEnabled.new({"studioModeEnabled" => TypeConverters::Boolean.as_json(studio_mode_enabled)}))
  end
  # Sends <tt>OpenInputPropertiesDialog</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#openinputpropertiesdialog
  # @param input_name [String] <tt>inputName</tt> field
  # @return [Future<Responses::OpenInputPropertiesDialog>]
  def open_input_properties_dialog(input_name:)
    send_request(Requests::OpenInputPropertiesDialog.new({"inputName" => TypeConverters::String.as_json(input_name)}))
  end
  # Sends <tt>OpenInputFiltersDialog</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#openinputfiltersdialog
  # @param input_name [String] <tt>inputName</tt> field
  # @return [Future<Responses::OpenInputFiltersDialog>]
  def open_input_filters_dialog(input_name:)
    send_request(Requests::OpenInputFiltersDialog.new({"inputName" => TypeConverters::String.as_json(input_name)}))
  end
  # Sends <tt>OpenInputInteractDialog</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#openinputinteractdialog
  # @param input_name [String] <tt>inputName</tt> field
  # @return [Future<Responses::OpenInputInteractDialog>]
  def open_input_interact_dialog(input_name:)
    send_request(Requests::OpenInputInteractDialog.new({"inputName" => TypeConverters::String.as_json(input_name)}))
  end
  # Sends <tt>GetMonitorList</tt> request.
  # @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md#getmonitorlist
  # @return [Future<Responses::GetMonitorList>]
  def get_monitor_list()
    send_request(Requests::GetMonitorList.new({}))
  end
end  # module Request
end  # module Mixins
end  # module OBS::WebSocket::Protocol
