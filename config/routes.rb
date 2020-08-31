Rails.application.routes.draw do
  resources :shares
  resources :nominations
  resources :movies
  resources :users

  post '/signup', to: 'users#create'
  post '/login', to: 'auth#login'
  get '/auto_login', to: 'auth#auto_login'

  get '/omdb', to: 'omdb#get_movies'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
