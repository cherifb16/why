Rails.application.routes.draw do
  #resources :posts
  root 'posts#index'
  get 'posts/index'
  get 'sessions/new'
  resources :posts
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
  resources  :users
  root 'tasks#index'

  resources :posts do
  collection do
    post :confirm
  end
  end

  resources :favorites, only: [:create, :destroy]

end
