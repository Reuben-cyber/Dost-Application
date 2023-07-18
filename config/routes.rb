Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#indexbf"
  get 'index', to:"home#index"
  post 'index', to:"home#new"
  get 'categories1',to:"home#categories1"
  get "signup", to: "users#new"
  get "login", to: "sessions#login"
  post "login", to: "sessions#create"
  get "logout", to: "sessions#destroy"
  get "suggestions", to:"home#suggestions"

resources :users,except: [:new]
end
