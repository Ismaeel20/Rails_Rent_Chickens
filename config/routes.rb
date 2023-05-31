Rails.application.routes.draw do
  devise_for :users
  resources :chickens # only: [:new, :create, :index, :show]
  get "bookings", to: "bookings#index"
  get "bookings/new", to: "bookings#new"
  get "bookings/:id", to: "bookings#show"

  get 'my_chickens', to: "chickens#my_chickens"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html


  # Defines the root path route ("/")
  root to: "pages#home"
end
# Defines the root path route ("/")
# root "articles#index"
