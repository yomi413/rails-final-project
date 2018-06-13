Rails.application.routes.draw do
  resources :parking_spaces
  resources :users
  resources :cars

  root "welcome#home"

  get '/session', to: 'sessions#new'
  post '/session', to: 'sessions#create', as: 'login'
  delete '/session', to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
