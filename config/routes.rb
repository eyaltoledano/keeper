Rails.application.routes.draw do
  resources :fiscal_years
  resources :transactions
  resources :clients
  namespace :admin do
    resources :users
    resources :clients
    resources :fiscal_years
    resources :transactions
    root to: "users#index"
  end
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
