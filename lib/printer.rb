class Printer
  def show_anagrams(word, anagram_array)
    return "Here is a list of anagrams of #{word}: #{anagram_array.join(", ")}"
  end
end