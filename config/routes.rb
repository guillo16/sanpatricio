Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'

  resources :articles
  resources :contacts, only: [:new, :create]

  get 'about', to: 'pages#about'
  get 'ib', to: 'pages#ib'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
