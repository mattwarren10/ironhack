Rails.application.routes.draw do
  	devise_for :users
  	get '/users/:id', to: "users#show"
  	
	root "sites#home"
	resources :sandwiches, only: [:index, :show], controller: "sandwich_views"
	scope "/api" do
    	resources :sandwiches
    	resources :ingredients
    	post "/sandwiches/:id/ingredients/add" => "sandwiches#add_ingredient"
	end
	
end
