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
    end
 end