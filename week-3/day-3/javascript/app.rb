color_array = ["indigo", "teal", "lilac", "black", "periwinkle", "baby blue", "periwinkle", "teal"]

def count_colors(color, color_array)
	counter = 0
	color_array.each do |c|
		if c == color
			counter+=1
		end
	end
	counter
end


p color_array

p count_colors("indigo", color_array) == 1
p count_colors("periwinkle", color_array) == 2
p count_colors("teal", color_array) == 2
p count_colors("green", color_array) == 0
p count_colors("navy blue", color_array) == 0