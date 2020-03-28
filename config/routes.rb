Rails.application.routes.draw do

  get 'conections/new'
  get 'conections/create'
  get 'conections/index'
  get 'conections/show'
  get 'events/index'
  get 'events/show'
  get 'events/new'
  devise_for :users
  root to: 'pages#home'

  resources :articles
  resources :contacts, only: [:new, :create]

  get 'about', to: 'pages#about'
  get 'ib', to: 'pages#ib'

  resources :events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
