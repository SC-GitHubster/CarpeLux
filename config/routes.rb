Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "up" => "rails/health#show", as: :rails_health_check

  resources :cars do
    resources :bookings, only: [:new, :create]
  end

  resources :users, only: [:new, :create, :show, :edit, :update]

  resources :bookings, only: [:index, :show, :destroy] do
    member do
      get :confirmation
    end
  end
end
