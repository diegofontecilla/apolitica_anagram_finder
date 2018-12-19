require_relative 'file_formatter'
require_relative 'anagram_solver'

class CLI
  def initialize(anagram_solver = AnagramSolver, file_formatter = FileFormatter)
    @anagram_solver = anagram_solver
    @file_formatter = file_formatter
  end

  def run
    puts user_prompt
    sample_word = gets.chomp!
    words_array = @file_formatter.get_list_of_words
    anagrams = @anagram_solver.find_anagrams(sample_word, words_array)
    puts result(anagrams)
  end

  private

  def user_prompt
    'Please enter a word to search...'
  end

  def result(anagrams)
    return "No anagrams found" if anagrams.empty?

    anagrams.join(', ')
  end
end

CLI.new.run
