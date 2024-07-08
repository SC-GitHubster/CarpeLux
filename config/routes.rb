Rails.application.routes.draw do
  get 'users/new'
  get 'users/create'
  get 'users/show'
  get 'users/edit'
  get 'users/update'
  get 'home/index'
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
