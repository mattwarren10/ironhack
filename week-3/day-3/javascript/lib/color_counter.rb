
class ColorCounter 
	def count_colors(color, color_array)
		counter = 0
		color_array.each do |c|
			if c == color
				counter+=1
			end
		end
		counter
	end
end