Rails.application.routes.draw do

  devise_for :users, :path_prefix =>'auth'
  root to: 'pages#home'

  get 'about', to: 'pages#about'
  get '/autoridades', to: 'pages#autoridades'
  get '/historia', to: 'pages#historia'
  get 'ib', to: 'pages#ib'
  get '/mision', to: 'pages#mision'
  get '/inicial', to: 'pages#inicial'
  get '/primario', to: 'pages#primario'
  get '/secundario', to: 'pages#secundario'
  get '/obras_teatro', to: 'pages#obras_teatro'
  get '/fiesta_colores', to: 'pages#fiesta_colores'
  get '/salidas_educativas', to: 'pages#salidas_educativas'
  get '/talleres', to: 'pages#talleres'
  get '/clases_abiertas', to: 'pages#clases_abiertas'
  get '/bicicleteadas', to: 'pages#bicicleteadas'

  resources :articles do
    resources :galleries, only: [:show, :create]
  end
  resources :contacts, only: [:new, :create]
  resources :conections, exept: [:update, :edit]



  resources :events
  resources :users, only: [:show, :destroy, :new, :create]
  resources :categories
  resources :posts
  resources :divisions, only: :show
  resources :documents
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
