Rails.application.routes.draw do
  get 'authorizations', to: 'authorizations#index', as: :authorization
  get 'authorizations/:type', to: 'authorizations#new', as: :new_authorization
  delete 'authorizations/:type', to: 'authorizations#destroy'
  get '/authorize', to: 'authorizations#create', as: :authorize

  get   '/login',  to: 'sessions#new',      as: :login
  post  '/login',  to: 'sessions#create',   as: :session
  get   '/logout', to: 'sessions#destroy',  as: :logout

  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
