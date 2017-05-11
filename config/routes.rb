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

root 'home#index'
end
