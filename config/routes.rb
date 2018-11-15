# frozen_string_literal: true

Rails.application.routes.draw do
  get 'sessions/new'
  resources :posts
  root 'static#index'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  get '/logout',  to: 'sessions#destroy'
  get 'signup', to: 'users#new'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
