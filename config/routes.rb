Rails.application.routes.draw do
  resources :reviews
  resources :guest_lists
  resources :orders
  resources :venue_listings
  resources :companies
  resources :customers
  devise_for :users
  root 'welcome#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
