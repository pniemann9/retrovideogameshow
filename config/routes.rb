Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :videogames do
    resources :bookings, only: [ :new, :create, :delete ]

  get 'index', to: 'pages#index'
# verb 'path', to: 'controller#action'

end
