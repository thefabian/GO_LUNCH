Rails.application.routes.draw do
  get 'messages/index'
  get 'conversations/index'
  devise_for :users, controllers: { registrations: 'users/registrations' }

  root to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "pricing", to: "pages#pricing"
  get "conformation", to: "pages#conformation"
  resources :companies, only: [ :new, :create, :show, :edit, :update ]
  resources :profiles, only: [ :new, :create, :show, :edit, :update ]
  resources :requests, only: [ :new, :create, :show ]
  resources :departments, only: [ :new, :create, :show, :edit, :update ]
  resources :lunches, only: :show
  resources :conversations, only: [:index, :create] do
    resources :messages, only: [:index, :create]
  end
end
