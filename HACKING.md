# Hacking ruby-obs-websocket

All contributions including patches and bug reports are welcome at GitHub <https://github.com/hanazuki/ruby-obs-websocket>.

## Packaging and release

### Update obs/websocket/protocol.rb

When a new version of obs-websocket is released or the codegen script is modified, take the following steps to generate the updated protocol definition.

1. Change `API_VERSION` in `Rakefile`.
2. Run `rake codegen`
3. Commit (and release).
