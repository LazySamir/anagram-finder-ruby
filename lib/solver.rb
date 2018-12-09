require_relative "./printer.rb"

class Solver
    
  attr_reader :anagrams
  
  def initialize(word_list = './assets/wordlist.txt', printer = Printer.new)
    @anagrams = []
    @word_list = word_list
    @printer = printer
  end
    
  def find_anagrams(word)
    File.foreach(@word_list) do |list_word| 
      anagrams << list_word.strip if ((normalise(word)) == (normalise(list_word).strip))
    end
    @printer.show_anagrams(word, anagrams)
  end
  
  private
  
  def normalise(word)
    word.chars.sort.join
  end
end