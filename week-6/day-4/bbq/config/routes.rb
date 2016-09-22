Rails.application.routes.draw do
  get '/users/:id', to: 'users#show', as: 'user'
  devise_for :users
  root 'barbecues#index'

  resources :barbecues, only: [ :index, :show, :new, :create ]
end
