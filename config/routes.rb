Rails.application.routes.draw do

  root :to => 'pages#index'
  # post 'user_token' => 'user_token#create'


  resources :ingredients
  resources :users, :defaults => { :format => 'json' }
  resources :nutritions
  resources :recipes
  post '/recipes/apicall' => 'recipes#apicall', :defaults => { :format => 'json' }

  get '/login' => 'session#new' #login form
  post '/login' => 'session#create', :defaults => { :format => 'json' } # perform a login
  delete '/login' => 'session#destroy' #perform a log out

end
