Rails.application.routes.draw do
  devise_for :users
  resources :prototypes, only:[:index, :new, :create, :show, :edit, :update]
  root to: "prototypes#index"
end
