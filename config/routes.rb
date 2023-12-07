Rails.application.routes.draw do
  resources :prototypes, only: :index
   root to: "prototypes#index"
  end
