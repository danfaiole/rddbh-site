Rails.application.routes.draw do
  get 'index', to: 'home#index'
  resource :users, only: [:create]

  root 'home#index'
end
