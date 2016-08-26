require "sinatra"
require "sinatra/reloader" if development?
require "imdb"

enable :sessions

get "/" do


	erb :home
end

get "/search_results" do
	the_search = Imdb::Search.new(params[:search_term])
	@movies = the_search.movies
	@movie_titles = []
	@movie_posters = [] 
	@movie_years = []
	@index = 0
	@movies.each do |the_movie| 
		@movie_titles.push(the_movie.title)
		@movie_posters.push(the_movie.poster) 
		@movie_years.push(the_movie.year)
		break if @movie_posters.length == 9 
	 end 
	 @random_movie_year = @movie_years.sample
	 index = @movie_years.index(@random_movie_year)
	 @correct_movie_poster = @movie_posters[index]

	erb :results
end
