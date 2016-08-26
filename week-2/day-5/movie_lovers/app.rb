require "sinatra"
require "sinatra/reloader" if development?
require "imdb"

get "/search_results" do

	the_search = Imdb::Search.new("alien")

	@movies = the_search.movies

	erb :results
end