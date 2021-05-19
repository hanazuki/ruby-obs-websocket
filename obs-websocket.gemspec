require_relative 'lib/obs/websocket/version'

Gem::Specification.new do |spec|
  spec.name          = 'obs-websocket'
  spec.version       = OBS::WebSocket::VERSION
  spec.authors       = ['Kasumi Hanazuki']
  spec.email         = ['kasumi@rollingapple.net']

  spec.summary       = 'Ruby client library for obs-websocket'
  spec.description   = 'Controls OBS Studio using obs-websocket protocol'
  spec.homepage      = 'https://github.com/hanazuki/ruby-obs-websocket'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.4.0')

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/hanazuki/ruby-obs-websocket'
  spec.metadata['changelog_uri'] = 'https://github.com/hanazuki/ruby-obs-websocket/blob/master/CHANGELOG.md'

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split(?\0).reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency 'example-gem', '~> 1.0'
end
