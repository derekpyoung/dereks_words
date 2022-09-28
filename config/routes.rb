Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
get '/users', to: 'users#index'
post '/users', to: 'users#create'
get '/users/:id', to: 'users#show'
get '/users/:id', to: 'users#destroy'
patch '/users/:id', to: 'users#update'

get '/', to: 'user_games#index'
  
end
