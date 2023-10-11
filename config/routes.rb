Rails.application.routes.draw do
  root 'home#index'
  resources :flat_rentals
  devise_for :users
  resources :messages, only: [:new, :create]
  resources :mmessages
  namespace :api do
    resources :users, only: [:index]
  end
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
