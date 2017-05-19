Rails.application.routes.draw do

  namespace :admin do
    resources :users

    root to: "users#index"
  end

  resources :users

  resources :sessions, only: [:new, :create] do
    delete :destroy, on: :collection
  end

  resources :matches

  resources :names

  resources :favorites

  resources :partnerships, only: [:new, :create]

  get "boy_names", to: "names#boy", as: "boy_names"
  get "girl_names", to: "names#girl", as: "girl_names"

root 'home#index'
end
