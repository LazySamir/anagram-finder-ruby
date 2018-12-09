require "./lib/printer.rb"

describe "printer" do
  subject(:printer) { Printer.new }
  
  describe "#show_anagrams" do
    it "presents anagrams in a message" do
      expect(printer.show_anagrams('monkey', ['monkey', 'omnkey', 'ynkemo']))
      .to eq("Here is a list of anagrams of monkey: monkey, omnkey, ynkemo")
    end
  end
 end
  