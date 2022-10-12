Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
get '/users', to: 'users#new'
post '/users', to: 'users#create'
get '/users/all', to: 'users#index'
get '/users/:id', to: 'users#show'
delete '/users/:id', to: 'users#destroy'
patch '/users/:id', to: 'users#update'

get '/', to: 'application#home'
get '/game', to: 'user_games#index'
post '/game', to: 'user_games#create'
get '/check_word', to: 'check_word#check_word'

get '/login', to: 'sessions#new'
post '/login', to: 'sessions#create'
delete '/logout', to: 'sessions#destroy'
get '/logout', to: 'sessions#destroy'



  
end




