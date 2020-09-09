Rails.application.routes.draw do
  get 'search', to: 'menu#search'
  resources :categories
  devise_for :users
  root 'welcome#home'

  resources :products
  get 'home', to: 'welcome#home'
  get 'about', to: 'welcome#about'
  get 'catering', to: 'welcome#catering'
  get 'menu', to: 'menu#index'
  get 'reviews', to: 'welcome#reviews'
end
