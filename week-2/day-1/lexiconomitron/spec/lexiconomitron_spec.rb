require_relative("../lib/lexiconomitron.rb")

describe Lexiconomitron do 
	before :each do 
    	@lexi = Lexiconomitron.new
    end

  describe "#eat_t" do
    it "removes every letter t from the input" do
      expect(@lexi.eat_t("great scott!")).to eq("grea sco!")
    end

    it "takes an array of words and reverses the letters" do 
    	array = ["This", "is", "a", "boring", "test"]
    	expect(@lexi.shazam(array)).to eq(["sihT", "si", "a", "gnirob", "tset"])
  	end

  	it "takes an array of words; eating the t's and keeps the words with 3 characters or less" do
  		array = ["if", "you", "wanna", "be", "my", "lover"]
  		expect(@lexi.oompa_loompa(array)).to eq(["if", "you", "be", "my"])
  	end
  end

end