Rails.application.routes.draw do

  devise_for :users
  root 'books#index'
  resources :users, only: [:show, :edit, :update]
  resources :books
  resources :tops, only: [:new]
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
