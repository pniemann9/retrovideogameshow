Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :videogames do
    resources :bookings
  end

  get "/dashboard", to: 'pages#dashboard'

# verb 'path', to: 'controller#action'
end
