Rails.application.routes.draw do
  devise_for :users
  resources :prototypes, only:[:index ,:new]
   root to: "prototypes#index"
  end
