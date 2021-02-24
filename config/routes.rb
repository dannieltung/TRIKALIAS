Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :manufacturers, only: [:new, :create, :show, :update]
  resources :price_lists, only: [:create]
end
