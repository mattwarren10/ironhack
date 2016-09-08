Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/users/:user_id/products', to: 'products#index',as: 'products'
  get '/users/:user_id/products/new', to: 'products#new', as: 'user_products_new'
  post '/users/:user_id/products', to: 'products#create', as: 'user_products'
  get '/users/:user_id/products/product.id', to: 'products#show', as: 'user_products_show'

end
