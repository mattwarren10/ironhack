require_relative("../lib/password_checker.rb")

RSpec.describe PasswordChecker do

  
  describe "#check_password" do

  	it "returns false for passwords shorter than 7 characters" do
  		the_checker = PasswordChecker.new

  		expect( the_checker.check_password("javier@example.com", "aB3")).to eq(false)
    end 

    it "returns false for passwords that don't contain letters" do
  		the_checker = PasswordChecker.new

  	    expect( the_checker.check_password("javier@example.com", "1234567,.*$")).to eq(false)
    end

    it "returns true for passwords that meet all criteria" do
  		the_checker = PasswordChecker.new

  	    expect( the_checker.check_password("javier@example.com", "1234567,.*$")).to eq(false)
    end
    it "returns true for passwords that do not contain either name or domain of email" do
      the_checker = PasswordChecker.new

        expect( the_checker.check_password("javier@example.com", "javierexamplecom")).to eq(false)
    end
  end
end