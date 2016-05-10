Rails.application.routes.draw do
  get 'channel/index', to: 'channel#index', as: :channels
  get 'channel/show', to: 'channel#show', as: :channel

  get 'sources', to: 'sources#index', as: :source
  get 'sources/:type', to: 'sources#new', as: :new_source
  delete 'sources/:type', to: 'sources#destroy'
  get '/authorize', to: 'sources#create', as: :authorize

  get   '/login',  to: 'sessions#new',      as: :login
  post  '/login',  to: 'sessions#create',   as: :session
  get   '/logout', to: 'sessions#destroy',  as: :logout

  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
