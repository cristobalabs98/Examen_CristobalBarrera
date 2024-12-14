  Rails.application.routes.draw do
    devise_for :users
    devise_scope :user do
      root to: "devise/sessions#new"
      resources :home, only: [ :index ]
      delete "users/:id", to: "users#destroy", as: :destroy_user_profile
    end
  end
