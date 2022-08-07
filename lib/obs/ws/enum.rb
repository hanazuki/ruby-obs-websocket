# frozen_string_literal: false

module OBS::WS::Protocol
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
      All =
        (
          General | Config | Scenes | Inputs | Transitions | Filters | Outputs |
            SceneItems | MediaInputs | Vendors
        )
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
  end # module Enums
end
