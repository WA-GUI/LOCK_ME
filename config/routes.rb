Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # resources :users do
  #   resources :booking, only: [:index, :new, :create]
  # end
  get "users", to: "users#show"
  get "services/:id/bookings/:id/resa", to: "bookings#resa", as: "resa"

  # , only: [:new, :destroy]
  resources :services, only: [:show, :index] do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:destroy]
end
