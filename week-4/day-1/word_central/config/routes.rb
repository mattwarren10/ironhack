Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'site#home'
  get '/text_inspections/new', to: 'text_inspections#new'
  post '/text_inspections', to: 'text_inspections#create'
  get '/asciis/new', to: 'asciis#new'
  post '/asciis', to: 'asciis#create'
  get '/placeholder_text/new', to: 'placeholder_text#new'
  post '/placeholder_text', to: 'placeholder_text#create'
end
