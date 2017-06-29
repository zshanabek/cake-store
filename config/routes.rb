Rails.application.routes.draw do

  root to: "welcome#index"
  resources :addresses
  resources :products
  resources :categories
  # resources :categories do
  #   resources :products, on: :members
  # end

  get "/users", to: "users#index"
  get "/show/:id", to: "users#show"
  
  

  devise_for :users, controllers: {registrations: "registrations"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
