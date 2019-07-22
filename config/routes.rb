Rails.application.routes.draw do

  get   '/users', to: 'users#index'
  post  '/users',  to: 'users#create'
  get   '/users/new', to: 'users#new'
  get   '/users/:id/', to: 'users#show', as: 'user'
  get   '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  put   '/users/:id', to: 'users#update'
  patch '/users/:id', to: 'users#update'
  delete '/users/:id', to: 'users#destroy'

  resources :posts
  
end
