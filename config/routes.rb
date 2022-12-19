Rails.application.routes.draw do
  root 'static_pages#home' #"application#hello" leads to the creation of a Rails helper called root_url
  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'
  get 'static_pages/contact'
end
