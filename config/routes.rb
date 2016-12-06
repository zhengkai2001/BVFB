Rails.application.routes.draw do
  get 'sessions/new'

  get 'donations/new'

  root 'static_pages#home'

  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'

  get '/donations', to: 'donations#index'
  get '/donate', to: 'donations#new'
  post '/donate', to: 'donations#create'
  # resources :donations

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  resources :users

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
