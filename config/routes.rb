Rails.application.routes.draw do
  resources :parking_spaces
  resources :users
  resources :cars

  root "welcome#home"

  get '/session', to: 'session#new'
  post '/session', to: 'session#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
