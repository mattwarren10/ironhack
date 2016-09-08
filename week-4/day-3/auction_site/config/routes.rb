Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/users/:user_id/products', to: 'products#index'
  get '/users/:user_id/products/new', to: 'products#new'
  post '/users/:user_id/products', to: 'products#create', as: 'user_products'
end
