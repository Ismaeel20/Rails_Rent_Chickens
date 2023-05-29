Rails.application.routes.draw do
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :chickens, only: [:new, :create, :index, :show]
end
# Defines the root path route ("/")
# root "articles#index"
