Rails.application.routes.draw do

  # get 'products/new' => 'products#new'
  # get 'products/:id' => 'products#show', as: 'product'
  # get 'products'     => 'products#index'
  # post 'products'    => 'products#create'


  root 'products#index'
  resources :products


end
