Rails.application.routes.draw do
  get 'sessions/new'
  root 'static_pages#home' #"application#hello" leads to the creation of a Rails helper called root_url
  #get '/home',    to:'static_pages#home'
  get '/help',    to:'static_pages#help'
  get '/about',    to:'static_pages#about'
  get '/contact',    to:'static_pages#contact'
  get '/weather',    to:'cities#index' #'static_pages#weather'
  get '/cities',  to:'cities#index'
  get '/cities/:geo', to:'cities#forecast'
  get '/signup',  to: 'users#new'
  get '/login',   to: 'sessions#new'
  post '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  #get '/logout',  to: 'sessions#destroy'

  resources :users
end
