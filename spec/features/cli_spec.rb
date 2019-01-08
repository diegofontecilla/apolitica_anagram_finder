require 'cli.rb'

describe CLI do

  let(:test_input) { StringIO.new("paste\n") }
  let(:test_output) { StringIO.new }
  let(:subject) { CLI.new(input: test_input, output: test_output) }
  before { subject.run }

  describe '#run' do

    it 'prompts the user for a sample word' do
      result = test_output.string
      expect(result).to include 'Please enter a word to search...'
    end

    it 'prints a list of anagrams' do
      result = test_output.string
      expect(result).to include 'pates, peats, septa, spate, tapes, tepas'
    end

  end
end
