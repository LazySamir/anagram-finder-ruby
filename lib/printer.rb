class Printer
  def show_anagrams(word, anagram_array)
    return "Here is a list of anagrams of #{word}: #{anagram_array.join(", ")}" if !(anagram_array.empty?)
    return "There are no anagrams for #{word}" if anagram_array.empty?    
  end
end
