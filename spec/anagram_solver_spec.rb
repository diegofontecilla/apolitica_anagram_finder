require 'anagram_solver'

describe AnagramSolver do

  let(:subject) { AnagramSolver }
  let(:word_array) { ['tapes', 'peats', 'orange', 'pates'] }
  let(:positive_sample_word) { 'paste' }
  let(:negative_sample_word) { 'zero' }

  describe '#find_anagrams' do

    context 'there are no anagrams' do
      it 'returns an empty array' do
        result = subject.find_anagrams(negative_sample_word, word_array)
        expect(result).to eq []
      end
    end

    context 'there are anagrams' do
      it 'returns an array of found anagrams' do
        result = subject.find_anagrams(positive_sample_word, word_array)
        expect(result.sort).to eq ['pates', 'peats', 'tapes']
      end
    end
  end

end
