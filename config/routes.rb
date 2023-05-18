Rails.application.routes.draw do
  devise_for :users
  root to: "cars#index"
  resources :cars do
    resources :reservations, only: %i[create new]
  end
  resources :reservations, only: %i[index show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
