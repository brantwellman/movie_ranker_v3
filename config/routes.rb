Rails.application.routes.draw do
  root 'home#index'

  get '/search', to: 'home#search'

  resources :movies, only: [:create]
end
