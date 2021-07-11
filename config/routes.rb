Rails.application.routes.draw do

  root to: 'home#top'
  get 'home/top'
  # get '/create', to: 'users#new'
  # post '/create',to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

 
  
  #   get 'users/new'
  #   get 'users/edit'
  #   get 'users/show'
  #   get 'users/index'
  
 
  resources :users
  resources :subscriptions
  
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end