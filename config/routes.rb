Rails.application.routes.draw do
  resources :users, :sessions
  get '/welcome'
end
