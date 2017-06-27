Rails.application.routes.draw do
<<<<<<< HEAD

  root to: "welcome#index"
  resources :addresses
  resources :products
  resources :categories 
  # resources :categories do
  #   resources :products, on: :members
  # end

=======
  root "home#index"

  devise_for :users, controllers: {registrations: "registrations"}
>>>>>>> 61e5fdfe7e95fa1ab62c6fef9842a8683cce0ca7
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
