Rails.application.routes.draw do
  devise_for :users
  root 'welcome#home'

  resources :products
  get 'home', to: 'welcome#home'
  get 'about', to: 'welcome#about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
