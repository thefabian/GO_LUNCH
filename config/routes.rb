Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }

  root to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "pricing", to: "pages#pricing"
  get "conformation", to: "pages#conformation"
  resources :companies, only: [ :new, :create, :show ]
  resources :profiles, only: [ :new, :create, :show ]
  resources :requests, only: [ :new, :create, :show ]
  resources :lunches, only: :show
end
