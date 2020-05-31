Rails.application.routes.draw do

  root 'locations#index'

  resources :locations

  resources :users, only: [:new, :create]

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'

  get 'logout', to: 'sessions#destroy' 
end
