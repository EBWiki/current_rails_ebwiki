# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get 'up' => 'rails/health#show', as: :rails_health_check

  # Defines the root path route ("/")
  root 'static#about'
  # root "posts#index"
  get '/about', to: 'static#about'
  get '/guidelines', to: 'static#guidelines'
  get '/instructions', to: 'static#instructions'
  get '/get-involved', to: 'static#further_actions'
  get '/how-to-help', to: 'static#how_to_help'

  resources :cases

end
