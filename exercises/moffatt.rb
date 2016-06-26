require 'pry'
class Trans
	def initialize (name, key, year)
		@name = name
		@key = key
		@year = year
		@books = [ ]
	end

	def add_books (title)
  	@books.push(title)
	end

	def list_info
		puts @name, @key, @year
	end

	def print_book_titles
		for b in @books
			puts b.title
		end
	end
end

class Book
	attr_reader :title
	def initialize (title)
		@title = title
	end

end

moffatt = Trans.new("James Moffatt", "MNT", 1926)

matthew = Book.new("Matthew")
mark = Book.new("Mark")
luke = Book.new("Luke")
john = Book.new("John")
acts = Book.new("Acts")
romans = Book.new("Romans")
one_corinthians = Book.new("1 Corinthians")
two_corinthians = Book.new("2 Corinthians")
galatians = Book.new("Galatians")
ephesians = Book.new("Ephesians")
philippians = Book.new("Philippians")
colosians = Book.new("Colosians")
one_thessalonians = Book.new("1 Thessalonians")
two_thessalonians = Book.new("2 Thessalonians")
one_timothy = Book.new("1 Timothy")
two_timothy = Book.new("2 Timothy")
titus = Book.new("Titus")
hebrews = Book.new("Hebrews")
james = Book.new("James")
one_peter = Book.new("1 Peter")
two_peter = Book.new("2 Peter")
one_john = Book.new("3 John")
two_john = Book.new("2 John")
three_john = Book.new("3 John")
jude = Book.new("Jude")
revelation = Book.new("Revelation")

moffatt.add_books(matthew)
moffatt.add_books(mark)
moffatt.add_books(luke)
moffatt.add_books(john)
moffatt.add_books(acts)
moffatt.add_books(romans)
moffatt.add_books(one_corinthians)
moffatt.add_books(two_corinthians)
moffatt.add_books(galatians)
moffatt.add_books(ephesians)
moffatt.add_books(philippians)
moffatt.add_books(colosians)
moffatt.add_books(one_thessalonians)
moffatt.add_books(two_thessalonians)
moffatt.add_books(one_timothy)
moffatt.add_books(two_timothy)
moffatt.add_books(titus)
moffatt.add_books(hebrews)
moffatt.add_books(james)
moffatt.add_books(one_peter)
moffatt.add_books(two_peter)
moffatt.add_books(one_john)
moffatt.add_books(two_john)
moffatt.add_books(three_john)
moffatt.add_books(jude)
moffatt.add_books(revelation)

puts moffatt.list_info
puts moffatt.print_book_titles