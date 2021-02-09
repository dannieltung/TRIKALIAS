Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :manufacturers, only: [:create]
end
