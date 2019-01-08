require 'file_formatter'

describe FileFormatter do

  let(:subject) { FileFormatter }
  let(:test_file) { 'resources/word_list_test.txt' }

  describe '#get_list_of_words' do
    it 'returns an array of strings' do
      result = subject.get_list_of_words(test_file)
      expect(result).to eq(['A', 'AA', 'AAA'])
    end
  end

end
