Rails.application.routes.draw do
  resources :libraries
  resources :classifications
  resources :sources
  resources :platforms
  resources :genres
  resources :games
  resources :users
  root 'welcome#index'
  get '/signup', to: 'users#new'
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  delete '/signout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
