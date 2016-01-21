Rails.application.routes.draw do
  root 'welcome#home'

  get '/auth/twitter', as: :login
  get '/auth/twitter/callback', to: 'sessions#create'
  get '/logout', to: "sessions#destroy", as: :logout

  resources :decks, only: [:new, :update, :create, :edit, :destroy]

  get "/deck-creator", to: "decks#new"

  resources :users, except: [:new, :create, :destroy]
end
