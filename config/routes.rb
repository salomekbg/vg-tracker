Rails.application.routes.draw do
  resources :classifications
  resources :acquisitions
  resources :releases
  resources :sources
  resources :platforms
  resources :genres
  resources :games
  resources :users
  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
