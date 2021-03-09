Rails.application.routes.draw do
  resources :perfect_leaderboards
  resources :perfect_games
  resources :chord_leaderboards
  resources :chord_games
  resources :intervals
  resources :experiences
  resources :interval_games
  resources :users
  post '/sign_up', to: 'users#create'
  post '/login', to: 'auth#create'
  get '/persist', to: 'auth#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
