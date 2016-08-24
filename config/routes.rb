Rails.application.routes.draw do
  resources :likes
  resources :comments
  resources :styles
  resources :users


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/session/new', to: 'session#new'
  post '/session', to: 'session#create'
  delete '/session', to: 'session#destroy'


end
