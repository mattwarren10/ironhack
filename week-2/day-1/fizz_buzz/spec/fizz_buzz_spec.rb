require_relative("../lib/fizz_buzz.rb")

RSpec.describe do 
	describe "implement fizz buzz" do
		before :each do 
			@the_fizz_buzzer = FizzBuzzer.new 
		end
		it "returns the number when called" do
			expect( @the_fizz_buzzer.fizz_buzz(7) ).to eq(7)
		end
		it "returns fizz when divisible by 3" do
			expect( @the_fizz_buzzer.fizz_buzz(9) ).to eq("Fizz")
		end
		it "returns fizz when divisible by 5" do
			expect( @the_fizz_buzzer.fizz_buzz(10) ).to eq("Buzz")
		end
		it "returns fizz when divisible by 3 and 5" do
			expect( @the_fizz_buzzer.fizz_buzz(15) ).to eq("FizzBuzz")
		end
	end
end