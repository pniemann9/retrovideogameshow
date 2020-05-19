Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :videogames

  root 'pages#home'
# verb 'path', to: 'controller#action'

end
