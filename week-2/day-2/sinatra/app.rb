require "sinatra"
require "sinatra/reloader" if development?
require "pry"

enable(:sessions)

get "/" do 

	erb :home
end


get "/company" do 

	erb :company
end

get "/about" do 
	# Refers to views/about.erb
# =>                  |
# => 		-----------
#			|
	erb :about
end

get "/pizza" do 
	@pizza_ingredients = ["Cheese", "Dough", "Tomato Sauce", "Mushrooms", "Pepperoni", "Pineapple" ]

	erb :favorite_pizza
end


users = [
	{ :username => "starwars", 		:name => "Star Wars", 	:bio => "The official home of Star Wars on Twitter.", 			:avatar => "/starwars.jpg" },
	{ :username => "celinedion", 	:name => "Celine Dion", :bio => "Posts signed / Publications signées TC = Team Céline", :avatar => "/celinedion.jpg" },
	{ :username => "webdevmattw", 	:name => "Matt Warren", :bio => "Visit mattwarren.us", 									:avatar => "/mattwarren.jpg" },
	{ :username => "shaq", 			:name => "SHAQ", 		:bio => "VERY QUOTATIOUS, I PERFORM RANDOM ACTS OF SHAQNESS", 	:avatar => "/shaq.jpg" }

]




# http://localhost:4567/users/starwars
# => 							|
# => 			-----------------
# => 			|
get "/users/:username" do
				#|
# => 			-------------------
# => 							 |
	@user_name_string = params[:username]
# => 		|
# => 		-----------------------------------------------------------
# => 																  |

	@the_user = users.find { |the_user| the_user[:username] == @user_name_string }


	if @the_user == nil
		status(404)
		erb :no_user
	else
		erb :user_profile
	end
end


get "/leadership" do 

	erb :leadership
end

get "/session_text/:text" do
	text = params[:text]
	session[:saved_value] = text
end

get "/session_show" do
	"Now in the session: " + session[:saved_value]
end




