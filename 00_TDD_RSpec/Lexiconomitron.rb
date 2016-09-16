class Lexiconomitron

	def eat_t(words)
        words.gsub(/[Tt]/, "")

	end

    def shazam(input)
        array = input.map { |word| eat_t(word).reverse }
        resultsarray = firstlast(array)
    end

    def firstlast(input)
        array = []
        last_word = input[-1]
        first_word = input[0]
        array << first_word
        array << last_word
    end

   def oompa_loompa(input)
        input.select {|word| word.length < 4}.map {|word| word.gsub(/[Tt]/,'')}
   end

end


RSpec.describe "Lexiconomitron" do

	before :each do
	   @lexi = Lexiconomitron.new
	end

    it "removes every letter t from the input" do
      expect(@lexi.eat_t("Toledo tambien")).to eq("oledo ambien")
  	end

    it "returns an array size 2" do
    expect(@lexi.firstlast(["his", "is", "a", "boring", "es"])).to eq(["his", "es"])
    end

    it "returns array of words less than 3 chars long" do
      expect(@lexi.oompa_loompa(["if","you","wanna","be","my","lover"])).to eq(["if","you","be","my"])
    end

    it "returns array of words less than 3 chars long with no Ts" do
      expect(@lexi.oompa_loompa(["How","many","times","must","a","the"])).to eq(["How","a","he"])
    end
end


