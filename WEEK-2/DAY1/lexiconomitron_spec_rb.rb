require 'rspec'
require './lexiconomitron_rb'

describe Lexiconomitron do
  subject { described_class.new }

  # describe '#eat_t' do
  #   let(:input) { 'great scott!' }
  #   let(:expected_output) { 'grea sco!' }
  #   let(:result) { subject.eat_t(input) }
  #
  #   it 'removes every letter t from the input' do
  #     expect(result).to eq(expected_output)
  #   end
  # end

  describe '#eat_t' do
    let(:result) { subject.eat_t(input) }

    context "when word has t" do
      let(:input) { "the" }
      let(:expected_output) { "he" }

      it "deletes the t" do
        expect(result).to eq(expected_output)
      end
    end

    context "when word has NO t" do
      let(:input) { "sunny" }

      it "returns the same word" do
        expect(result).to eq(input)

      end
    end



    end

    it 'removes every letter t from the input' do
      expect(result).to eq(expected_output)
    end
  end

  describe '#shazam' do
    let(:input) { %w(This is a boring test) }
    let(:expected_output) { %w(sih se) }
    let(:result) { subject.shazam(input) }

    it 'reverses the letters and returns first and last (without t)' do
      expect(result).to eq(expected_output)
    end
  end

  describe '#oompa_loompa' do
    let(:input) { %w(if you wanna be the lover) }
    let(:expected_output) { %w(if you be he) }
    let(:result) { subject.oompa_loompa(input) }

    it 'takes only the words with 3 chars or less' do
      expect(result).to eq(expected_output)
    end
  end
end
