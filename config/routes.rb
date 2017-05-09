Rails.application.routes.draw do

  namespace :admin do
    resources :users

    root to: "users#index"
  end

  resources :users

  resources :sessions

  resources :matches

  resources :names

  resources :favorites

root 'home#index'
end
