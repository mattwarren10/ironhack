
require "sinatra"
require "sinatra/reloader" if development?
require "imdb"
require_relative "lib/movies.rb"

new_movies = Movies.new

get "/" do


	erb :home
end

get "/search_results" do
	@movies = new_movies.search(params[:search_term])
	erb :results
end