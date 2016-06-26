
str = "Today I didn't really go anywhere except going for a run."
def alpha (sentence)
	sentence = sentence.split(' ').sort
	ns = sentence.sort_by { |x| x.downcase }
end
puts alpha(str)
