Rails.application.routes.draw do
  root 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'

  resources :users, only: [:new, :create]
  resources :journals do
    resources :entries, only: [:new, :create, :show, :destroy]
  end
end
