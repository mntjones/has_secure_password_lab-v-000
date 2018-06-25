Rails.application.routes.draw do
  get 'users#new'
  post 'users#create'
  
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
end
