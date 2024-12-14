  Rails.application.routes.draw do
    resources :materials
    devise_for :users, controllers: { registrations: "users/registrations" }
    devise_scope :user do
      root to: "devise/sessions#new"
      resources :home, only: [ :index ]
      delete "users/:id", to: "users#destroy", as: :destroy_user_profile
      resources :materials
    end
  end
