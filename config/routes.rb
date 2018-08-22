Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "pricing", to: "pages#pricing"
  resources :companies, only: [ :new, :create, :show ]
  resources :profiles, only: [ :new, :create, :show ] do
    resources :requests, only: [ :new, :create ]
  end
end
