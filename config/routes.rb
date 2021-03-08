Rails.application.routes.draw do

  get 'documents/index'
  get 'documents/show'
  get 'documents/new'
  get 'documents/edit'
  devise_for :users, :path_prefix =>'auth'
  root to: 'pages#home'

  resources :articles do
    resources :galleries, only: [:show, :create]
  end
  resources :contacts, only: [:new, :create]
  resources :conections, exept: [:update, :edit]

  get 'about', to: 'pages#about'
  get 'ib', to: 'pages#ib'

  resources :events
  resources :users, only: [:show, :destroy, :new, :create]
  resources :categories
  resources :posts
  resources :divisions, only: :show
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
