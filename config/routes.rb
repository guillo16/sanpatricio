Rails.application.routes.draw do


  devise_for :users
  root to: 'pages#home'

  resources :articles
  resources :contacts, only: [:new, :create]
  resources :conections, exept: [:update, :edit, :destroy]

  get 'about', to: 'pages#about'
  get 'ib', to: 'pages#ib'

  resources :events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
