Rails.application.routes.draw do

  root :to => 'pages#index'
  post 'user_token' => 'user_token#create'

  resources :ingredients
  resources :users
  resources :nutritions
  resources :recipes
  get '/login' => 'session#new' #login form
  post '/login' => 'session#create' # perform a login
  delete '/login' => 'session#destroy' #perform a log out

end
