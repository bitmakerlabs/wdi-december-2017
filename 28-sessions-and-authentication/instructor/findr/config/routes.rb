Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resource :users, only: %i(new create)
  resource :sessions, only: %i(new create destroy)
  resources :profiles, only: :index

  root 'profiles#index'
end
