Rails.application.routes.draw do

  get 'contacts/new'
  get 'contacts/create'
  devise_for :users
  root to: 'pages#home'

  resources :articles

  get 'about', to: 'pages#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
