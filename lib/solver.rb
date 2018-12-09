class Solver
    
  attr_reader :anagrams
  
  def initialize(word_list = './assets/wordlist.txt')
    @anagrams = []
    @word_list = word_list
  end
    
  def find_anagrams(word)
    File.foreach(@word_list) do |list_word| 
      anagrams << list_word.strip if ((word.chars.sort.join) == (list_word.chars.sort.join.strip)) 
    end
  end
end