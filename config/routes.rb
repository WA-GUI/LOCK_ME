Rails.application.routes.draw do

  # root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
   root 'users#index'

  resources :users do
    resources :booking, only: [:index, :new, :create]
  end
  resources :bookmarks, only: :destroy
end
