Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  root "home#index"

  resources :ingredients
  # resources :fridge, only: [:index, :create, :test]

  # get "/fridge/add_ingredients", to: "fridge#index", via: :all
  # get "/fridge/delete_ingredients", to: "fridge#index", via: :all
  match "/fridge/add_ingredients", to: "fridge#add_ingredients_view", via: [:get]
  match "/fridge/add_ingredients", to: "fridge#add_ingredients", via: [:post]

  match "/fridge/remove_ingredients", to: "fridge#remove_ingredients_view", via: [:get]
  match "/fridge/remove_ingredients", to: "fridge#remove_ingredients", via: [:post]
  
  
  
  get '*path' => redirect('/')
end

