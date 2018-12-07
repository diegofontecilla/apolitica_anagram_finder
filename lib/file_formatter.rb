class FileFormatter
  def get_list_of_words(file)
    word_list = []
    File.open(file).each { |line| word_list << line.to_s.delete("\n") }
    word_list
  end
end
