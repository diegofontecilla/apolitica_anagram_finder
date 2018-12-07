require 'anagram_solver'

describe AnagramSolver do
  before do
    $stdin = StringIO.new("care\n")
  end

  after do
    $stdin = STDIN
  end

  let(:fake_file) { double(:file) }
  let(:fake_file_formatter) { double(:file_formatter, get_list_of_words: nil) }
  subject(:anagram_solver) { AnagramSolver.new(fake_file_formatter) }

  context '#anagrammer' do
    it 'runs printer method with nil' do
      anagram_solver.anagrammer(fake_file)
      expect(anagram_solver.printer(nil)).to output("Please insert a word:\n").to_stdout
    end
  end
end
