Rails.application.routes.draw do



  devise_for :users
  root to: 'pages#home'

  resources :articles do
    resources :galleries, only: [:show, :create]
  end
  resources :contacts, only: [:new, :create]
  resources :conections, exept: [:update, :edit]

  get 'about', to: 'pages#about'
  get 'ib', to: 'pages#ib'

  resources :events
  resources :users, only: :show
  resources :categories, only: [:index, :show]
  resources :posts
  resources :divisions, only: :show
  resources :galleries, only: [:index, :show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
