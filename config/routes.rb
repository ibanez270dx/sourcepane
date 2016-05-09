Rails.application.routes.draw do
  get 'authorizations/index', to: 'authorizations#index'
  get 'authorizations/:type/new', to: 'authorizations#new', as: :new_authorization
  post 'authorizations/:type/create', to: 'authorizations#create', as: :authorizations
  delete 'authorizations/:type/destroy', to: 'authorizations#destroy', as: :authorization

  get   '/login',  to: 'sessions#new',      as: :login
  post  '/login',  to: 'sessions#create',   as: :session
  get   '/logout', to: 'sessions#destroy',  as: :logout

  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
