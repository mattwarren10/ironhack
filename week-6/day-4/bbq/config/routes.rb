Rails.application.routes.draw do
  get '/users/:id', to: 'users#show', as: 'user'
  get '/api/barbecues/:id', to: 'barbecues#get_api'
  devise_for :users
  root 'barbecues#index'

  resources :barbecues, only: [ :index, :show, :new, :create ]
end
