require_relative 'file_formatter'

class AnagramSolver
  attr_reader :anagrams, :file_formatter

  def initialize(file_formatter = FileFormatter.new)
    @anagrams = []
    @file_formatter = file_formatter
  end

  def anagrammer(file)
    printer(nil)
    user_input = gets.chomp
    word_list = get_list_of_words(file)
    word_length(user_input, word_list)
    printer(user_input)
  end

  private

  def printer(user_input)
    puts "Please insert a word:" if user_input == nil
    puts "Sorry, we dont have anagrams for the word #{user_input}." if user_input != nil && anagrams.length == 0

    if anagrams.length > 0
      puts "This are the anagrams for #{user_input}:"
      puts anagrams
    end
  end

  def get_list_of_words(file)
    file_formatter.get_list_of_words(file)
  end

  def word_length(user_input, word_list)
    word_list.map do |word|
      if word.length == user_input.length
        word_matcher(word, user_input)
      end
    end
  end

  def word_matcher(word, user_input)
    word_sorted = word.downcase.chars.sort.join
    user_input_sorted = user_input.downcase.chars.sort.join
    anagrams << word if word_sorted == user_input_sorted && word.downcase != user_input.downcase
  end
end

anagram_solver = AnagramSolver.new
anagram_solver.anagrammer('resources/word_list.txt')
