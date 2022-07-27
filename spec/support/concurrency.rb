require 'forwardable'

class CapturingExecutor
  include Concurrent::ExecutorService
  extend Forwardable

  def initialize(executor)
    @executor = executor
    @failures = Concurrent::Array.new
  end

  def_delegators(:executor, :shutdown, :kill, :wait_for_termination)

  def post(*args, &task)
    executor.post(*args) do |*args|
      RSpec::Support.with_failure_notifier(->(e, _opts) { @failures << e }) do
        task.call(*args)
      end
    end
  end

  def notify_failure
    if e = @failures.shift
      RSpec::Support.notify_failure(e)
    end
  end

  private

  def executor
    Concurrent::Options.executor(@executor)
  end
end

RSpec.shared_context 'Concurrency' do
  let!(:executor) do
    CapturingExecutor.new(Concurrent::Promises.default_executor)
  end

  after do
    executor.notify_failure
  end
end
