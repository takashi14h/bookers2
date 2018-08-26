Rails.application.routes.draw do

  devise_for :users
  root 'tops#new'
  resources :users, only: [:index, :show, :edit, :update]
  resources :books
  resources :tops, only: [:new, :index]
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
