class FileFormatter
  def self.get_list_of_words(file = 'resources/word_list.txt')
    File.open(file).map { |line| line.strip }
  end
end
