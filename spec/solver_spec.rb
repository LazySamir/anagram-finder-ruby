require "./lib/solver.rb"

describe "solver" do
  subject(:solver) { Solver.new('./assets/test_wordlist.txt') }

    describe "#find_anagrams" do
      it "shows lower-case character anagrams" do
        solver.find_anagrams('monkey')
        expect(solver.anagrams).to eq(['monkey', 'omnkey', 'ynkemo'])
      end
    end
 end