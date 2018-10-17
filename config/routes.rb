Rails.application.routes.draw do
  root 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'

  resources :users, only: [:new, :create]
  resources :journals
end
