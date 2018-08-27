Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }

  root to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "pricing", to: "pages#pricing"
  get "conformation", to: "pages#conformation"
  resources :companies, only: [ :new, :create, :show, :edit, :update ]
  resources :profiles, only: [ :new, :create, :show, :edit, :update ] do
    resources :requests, only: [ :new, :create, :show ]
  end
end
