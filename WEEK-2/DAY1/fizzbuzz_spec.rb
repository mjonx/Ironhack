require 'rspec'
require './fizzbuzz.rb'

describe 'Fizzbuzz' do
  describe '#check_number' do
    it 'returns Fizz if number is / by 3' do
      result = Fizzbuzz.new.check_number(3)
      expect(result).to eq('Fizz')
    end

    it 'returns Fizz if number is / by 5' do
      result = Fizzbuzz.new.check_number(5)
      expect(result).to eq('Buzz')
    end

    it 'returns FizzBuzz if number is / by 3 and 5' do
      result = Fizzbuzz.new.check_number(15)
      expect(result).to eq('FizzBuzz')
    end

  end
end
