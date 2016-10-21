Rails.application.routes.draw do


  get 'sessions/new'

  resources :users

  root 'static_pages#home'
  
  get 'users/new'

  get '/home', to: 'static_pages#home'

  get '/help', to: 'static_pages#help'

  get '/about', to: 'static_pages#about'

  get '/contacts', to: 'static_pages#contacts'

  get '/signup', to: 'users#new'

  post '/signup',  to: 'users#create'  

  get    '/login',   to: 'sessions#new'

  post   '/login',   to: 'sessions#create'
  
  delete '/logout',  to: 'sessions#destroy'


end
