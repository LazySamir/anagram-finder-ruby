require_relative "./printer.rb"

class Solver
    
  attr_reader :anagrams
  
  def initialize(word_list = './assets/wordlist.txt', printer = Printer.new)
    @anagrams = []
    @word_list = word_list
    @printer = printer
  end
    
  def find_anagrams(word)
    anagrams.clear
    File.foreach(@word_list) do |list_word| 
      anagrams << list_word.strip if ((normalise(word)) == (normalise(list_word).strip))
    end
    @printer.show_anagrams(word, anagrams)
  end
  
  private
  
  def normalise(word)
    word.downcase.chars.sort.join.gsub(/-|'/, '')
  end
end