class StringCalculator
	def add(str)
		num_array = []
		num_array = str.split(/\D/)
		added_numbers = 0
		num_array.each do |num|
			added_numbers += num.to_i
		end
		added_numbers
	end
end