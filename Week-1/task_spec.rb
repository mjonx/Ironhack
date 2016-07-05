require 'rspec'
require './task'

describe Task do
  before :each do
    @task = Task.new
  end
  describe '#complete?' do
    it 'should return false' do
      result = Task.new.complete?
      expect(result).to eq(false)
    end
    
  end
end
