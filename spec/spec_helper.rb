require 'obs/websocket'

RSpec.configure do |config|
  config.disable_monkey_patching!

  config.example_status_persistence_file_path = '.rspec_status'
  config.fail_if_no_examples = true
  config.filter_run_when_matching :focus

  config.expect_with :rspec do |c|
    c.syntax = :expect
    c.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups

  config.when_first_matching_example_defined(:integration) do
    require_relative 'support/integration'
    config.include_context 'With running OBS', :integration
  end
end
