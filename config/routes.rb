Rails.application.routes.draw do
  get   '/login',  to: 'sessions#new',      as: :login
  post  '/login',  to: 'sessions#create',   as: :session
  get   '/logout', to: 'sessions#destroy',  as: :logout

  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
