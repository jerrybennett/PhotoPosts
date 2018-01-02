Rails.application.routes.draw do
  resources :posts
  resources :users
  resources :reviews
  resources :locations
  resources :tags
  root 'posts#index'
end
