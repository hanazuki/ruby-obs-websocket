require 'bundler/gem_tasks'
require 'rspec/core/rake_task'
require 'yard'

API_VERSION = File.read('./PROTOCOL_VERSION').chomp

RSpec::Core::RakeTask.new(:spec)

task :default => :spec

task :codegen do
  sh "./codegen/generate-protocol #{API_VERSION} > ./lib/obs/websocket/protocol.rb"
end

YARD::Rake::YardocTask.new(:doc)
