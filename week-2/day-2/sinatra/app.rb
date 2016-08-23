require "sinatra"

get "/" do 

	erb :home
end


get "/company" do 
	"We are looking for investors.<a href='/'>Go back.</a>"

	erb :company
end

get "/about" do 
	# Refers to views/about.erb
# =>                  |
# => 		-----------
#			|
	erb :about
end