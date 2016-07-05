require 'rspec'
require './todo'

describe Task do
  describe "#new" do
    let(:content) { 'This is the content' }

    it 'saves the content' do
      task = Task.new('This is the content')
      expect(task.content).to eq('This is the content')
    end




  end
end
