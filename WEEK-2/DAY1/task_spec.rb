require 'rspec'
require './task'

describe Task do
  before :each do
    @task = Task.new("Buy the milk")
  end

  describe '#complete?' do
    it 'should return false' do
      result = Task.new("Buy the milk").complete?
      expect(result).to eq(false)
    end
  end

  describe '#incomplete?' do
    it 'should return false' do
      result = Task.new("Buy the milk").incomplete?
      expect(result).to eq(false)
    end
  end
end
