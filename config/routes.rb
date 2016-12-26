Rails.application.routes.draw do
  get 'index', to: 'home#index'
  resource :users

  root 'home#index'
end
