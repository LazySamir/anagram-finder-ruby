require "./lib/solver.rb"

describe "solver" do
  subject(:solver) { Solver.new('./assets/test_wordlist.txt', mock_printer) }
  let(:mock_printer) { double('Printer', show_anagrams: []) }

    describe "#find_anagrams" do
      
      it "shows lower-case character anagrams" do
        solver.find_anagrams('monkey')
        
        expect(solver.anagrams).to eq(['monkey', 'omnkey', 'ynkemo'])
      end
      
      it "shows mixed-case character anagrams" do
        solver.find_anagrams('elephant')
        
        expect(solver.anagrams).to eq(['Elephant', 'phaNteLe', 'elphAnte'])
      end
      
      it "shows anagrams with hyphens" do
        solver.find_anagrams('dog')

        expect(solver.anagrams).to eq(['d-og', 'go-d', 'od-g'])
      end
      
      it "shows anagrams with apostrophes" do
        solver.find_anagrams('cats')

        expect(solver.anagrams).to eq(["cat\'s", "ac\'st", "sat\'c"])
      end
    end
 end