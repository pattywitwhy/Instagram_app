Rails.application.routes.draw do
  devise_for :users
  get '/home' => 'home#index'
  root to: 'home#index'

  resources :users, only: [:show]
end
