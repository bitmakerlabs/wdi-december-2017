Rails.application.routes.draw do


  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resource :users, only: %i(new create)

  resources :profiles, only: :index

  root 'profiles#index'
end
