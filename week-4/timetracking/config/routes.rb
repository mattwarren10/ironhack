Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :projects

  get '/', to: 'site#home'

  get '/contact', to: 'site#contact'

  get '/say_name/:name', to: 'site#say_name'

  get '/projects/:project_id/time_entries', to: "time_entries#index"

  get '/projects/:project_id/time_entries/new', to: "time_entries#new"

  post '/projects/:project_id/time_entries', to: "time_entries#create", as: :project_time_entries

  get '/projects/:project_id/time_entries/:id/edit', to: "time_entries#edit"

  patch '/projects/:project_id/time_entries/:id', to: "time_entries#update", as: :project_time_entry
end
