Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :manufacturers, only: [:new, :create, :show]
  resources :price_lists, only: [:create]
  resources :costs, only: [:new, :create, :show, :edit, :update]
end
