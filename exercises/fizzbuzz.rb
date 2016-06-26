
#Set variables
number = [ 0 ]
fizz = "fizz"
buzz = "buzz"
bang = "bang"
fizzbuzz = fizz + buzz
fizzbang = fizz + bang
buzzbang = buzz + bang
fizzbuzzbang = fizz + buzz + bang

# While loop
# while number <= 99
# 	number = number + 1 
# 	if number.remainder(3) == 0 && number.remainder(5) == 0
# 		puts fizzbuzz
# 	elsif number.remainder(3) == 0
# 		puts fizz
# 	elsif number.remainder(5) == 0
# 		puts buzz
# 	else
# 		puts number
# 	end
# end


# For loop
for element in number
	number.push(number[-1] + 1)
	if number[-1] == 101
		break
	elsif number[-1].divmod(10)[0] == 1 && number[-1].remainder(3) == 0 && number[-1].remainder(5) == 0	
		puts fizzbuzzbang
	elsif number[-1].divmod(10)[0] == 1 && number[-1].remainder(3) == 0
		puts fizzbang	
	elsif number[-1].divmod(10)[0] == 1 && number[-1].remainder(5) == 0 || number[-1].divmod(10)[0] == 10
		puts buzzbang	
	elsif number[-1].remainder(3) == 0 && number[-1].remainder(5) == 0	
		puts fizzbuzz
	elsif number[-1].remainder(3) == 0
		puts fizz
	elsif number[-1].remainder(5) == 0
		puts buzz
	elsif number[-1].divmod(10)[0] == 1
		puts bang	
	else
		puts number[-1]
	end
end

