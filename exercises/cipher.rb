
puts "Enter a new phrase to cipher"
r = gets.chomp
puts "Type a shift (ex. -3 or +2)"
s = gets.chomp

def cipher (response, shift)
	spl = response.split('')
	ordinals = []
	new_char_arr = []
		for letter in spl
			if letter == " "
				int = " "
			else
				int = letter.ord
			end	
			if shift.chr == "+" && int != " "
				ordinals.push(int + shift[1].to_i)
				ordinals.collect! { |i| (i == 122 + shift[1].to_i) || (i == 90 + shift[1].to_i)? i - 26 : i }
			elsif shift.chr == "-" && int != " "
				ordinals.push(int - shift[1].to_i)
				ordinals.collect! { |i| (i == 97 - shift[1].to_i) || (i == 65 - shift[1].to_i) ? i + 26 : i }
			else
				ordinals.push(int)
			end
		end	
		for num in ordinals
			new_cipher = new_char_arr.push(num.chr).join
		end
	puts new_cipher
end
cipher(r, s)
