Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'
  get 'test', to: 'home#test'

  resources :snippets
end
