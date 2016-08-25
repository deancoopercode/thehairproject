Rails.application.routes.draw do
  resources :likes
  resources :comments
  # resources :styles
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/', to: 'styles#index'

  get '/session/new', to: 'session#new'
  post '/session', to: 'session#create'
  delete '/session', to: 'session#destroy'

  get '/styles/tag/:text', to: 'styles#filterbytag'
  get '/styles/album', to: 'styles#showalbum'
  get '/styles/favourites', to: 'styles#showfavourites'

  get '/styles'    ,      to:   'styles#index'
  get '/styles/new',      to:   'styles#new'
  post '/styles'   ,      to:   'styles#create'
  get '/styles/:id'  ,    to:   'styles#show'
  get '/styles/:id/edit', to:   'styles#edit'
  put '/styles/:id',      to:   'styles#update'
  delete '/styles/:id',   to:   'styles#destroy'


end
