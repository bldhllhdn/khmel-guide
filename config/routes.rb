Rails.application.routes.draw do

  root 'locations#index'

  resources :users, only: [:new, :create]
  resources :locations

  get 'login', to: 'sessions#new'
  get 'logout', to: 'sessions#destroy'
  post 'login', to: 'sessions#create'

  get 'locations/:id/comment',  to: 'locations#new_comment', as: :new_comment
  post 'locations/:id/comment', to: 'locations#create_comment'

end
