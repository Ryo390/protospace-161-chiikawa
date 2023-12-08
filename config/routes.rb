Rails.application.routes.draw do
  devise_for :users
  resources :prototypes, only: :index
   root to: "prototypes#index"
  end
