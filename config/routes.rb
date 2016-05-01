Rails.application.routes.draw do
  # only add in the routes you are actually using
  root to:'homes#show', via: :get
  resource :dashboard, only: [:show] #singleton resource
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  resources :shouts, only: [:create]
end

