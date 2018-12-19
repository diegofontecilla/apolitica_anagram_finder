class AnagramSolver

  def self.find_anagrams(sample_word, words_array)
    result = []
    words_array.each do |word|
      next if sample_word == word

      result << word if same_length?(sample_word, word) && is_anagram?(sample_word, word)
    end
    result
  end

  private

  def self.same_length?(sample_word, word)
    sample_word.length == word.length
  end

  def self.is_anagram?(sample_word, word)
    sorted(sample_word) == sorted(word)
  end

  def self.sorted(word)
    word.downcase.chars.sort
  end
end
