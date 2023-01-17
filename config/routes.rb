Rails.application.routes.draw do
  get 'sessions/new'
  root 'static_pages#home' #"application#hello" leads to the creation of a Rails helper called root_url
  #get '/home',    to:'static_pages#home'
  get '/help',    to:'static_pages#help'
  get '/about',    to:'static_pages#about'
  get '/contact',    to:'static_pages#contact'
  get '/weather',    to:'static_pages#weather'
  
  get '/signup',  to: 'users#new'
  get '/login',   to: 'sessions#new'
  post '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  #get '/logout',  to: 'sessions#destroy'

  resources :users
end
