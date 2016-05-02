Rails.application.routes.draw do
  # only add in the routes you are actually using
  root to:'homes#show', via: :get
  resource :dashboard, only: [:show] #singleton resource
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:index, :new, :create, :show] do
    post 'follow' => 'following_relationships#create'
  end
  resources :shouts, only: [:show]
  resources :text_shouts, only: [:create]
  resources :photo_shouts, only: [:create]
end

