require 'rspec'
require './todo2'

describe Todo do
  subject { described_class.new() }
  describe "#add" do
    it 'saves the task' do
      tast = Task.new('something')
      subject.add task

      expect(subject.tasks).to include(task)
    end
  end
end
