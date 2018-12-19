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

  def self.same_length?(first_word, second_word)
    first_word.length == second_word.length
  end

  def self.is_anagram?(first_word, second_word)
    sorted(first_word) == sorted(second_word)
  end

  def self.sorted(word)
    word.downcase.chars.sort
  end
end
