Rails.application.routes.draw do
  devise_for :users
  get '/users/:id', to: 'users#show'
  root 'barbecues#index'

  resources :barbecues, only: [ :index, :show, :new, :create ]
end
