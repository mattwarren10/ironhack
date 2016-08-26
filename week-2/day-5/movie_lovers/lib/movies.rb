class Movies
	attr_reader :movies, :movie_years
		def initialize
		@movies = []
	end
	def add_movies(m)
		@movies.push(m)
	end

	def search(movie)
		the_search = Imdb::Search.new(movie)
		@movies = the_search.movies.take(9)
	end

	def find_movie_years
		@movies.each do |the_movie| 
			@movie_years.push(the_movie.year)
	 	end 
	end


end

