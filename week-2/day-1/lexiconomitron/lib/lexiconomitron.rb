class Lexiconomitron
	def eat_t(str)
		str.delete("t")
	end

	def shazam(array)
		new_array = []
		new_array = array.map do |x| 
			x.reverse 
		end
		new_array
	end

	def oompa_loompa(array)
		new_array = []
		array.each do |word|
			if word.length <= 3 
				new_array.push(word)
			end
		end
		new_array
	end
end