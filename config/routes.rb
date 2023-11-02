Rails.application.routes.draw do
  resources :plots
  get 'requirements/new'
  get 'requirements/create'
  root 'home#index'
  resources :flat_rentals
  devise_for :users
  resources :flat_rentals do
    resources :messages, only: [:create, :show]
  end
  
  resources :flat_rentals do
    resources :chatroomes, only: [:create, :show]
  end

  resources :requirements, only: [:new, :create, :show, :index]
  
  resources :flat_rentals do
     get :my_flats 
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
