Rails.application.routes.draw do
  devise_for :users
  root 'welcome#home'

  resources :products
  resources :order_items
  resources :categories

  get 'home', to: 'welcome#home'
  get 'about', to: 'welcome#about'
  get 'catering', to: 'welcome#catering'
  get 'menu', to: 'menu#index'
  get 'reviews', to: 'welcome#reviews'
  get 'cart', to: 'cart#show'
  get 'search', to: 'menu#search'
  
end
