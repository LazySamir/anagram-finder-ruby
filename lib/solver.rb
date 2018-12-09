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
      anagrams << list_word.strip if ((word.chars.sort.join) == (list_word.chars.sort.join.strip)) 
    end
    @printer.show_anagrams(word, anagrams)
  end
end