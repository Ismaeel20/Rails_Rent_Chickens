Rails.application.routes.draw do
  devise_for :users
  resources :chickens, only: [:new, :create, :index, :show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "pages#home"
end
