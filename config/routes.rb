Rails.application.routes.draw do
  get 'donations/new'

  root 'static_pages#home'

  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'

  get '/donate', to: 'donations#new'
  post '/donate', to: 'donations#create'
  resources :donations

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  resources :users
end
