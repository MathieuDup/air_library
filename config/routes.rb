Rails.application.routes.draw do
  devise_for :users
  root to: 'products#index'
  resources :products do
    resources :bookings, only: :create
  end
  resources :bookings, only: %i[index show edit update] do
    resources :messages, only: %i[index create]
  end
  resources :users, only: %i[show edit update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
