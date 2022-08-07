require_relative "enum"
require_relative "event"
require_relative "request"
require_relative "response"
require_relative "mixin"

# The protocol definition of obs-websocket. Generated from <https://raw.githubusercontent.com/obsproject/obs-websocket/5.0.0/docs/generated/protocol.json>.
# @see https://github.com/obsproject/obs-websocket/blob/5.0.0/docs/generated/protocol.md
module OBS::WS::Protocol
  # The version of obs-websocket from which this protocol definition is genereted.
  VERSION = "5.0.0"
end # module OBS::WS::Protocol
