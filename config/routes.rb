Rails.application.routes.draw do

  post 'user_token' => 'user_token#create'
  root :to => 'pages#index'
  # post 'user_token' => 'user_token#create'

  resources :ingredients
  resources :users, :defaults => { :format => 'json' }
  resources :nutritions
  resources :recipes
  get '/mealplans' => 'mealplans#index', :defaults => { :format => 'json' }
  post '/mealplans'=> 'mealplans#destroy',  :defaults => { :format => 'json' }
  post '/recipes/apicall' => 'recipes#apicall', :defaults => { :format => 'json' }
  post 'mealplans/addmeal' => 'mealplans#addmeal', :defaults => { :format => 'json' }
  get '/login' => 'session#new' #login form
  post '/login' => 'session#create', :defaults => { :format => 'json' } # perform a login
  delete '/login' => 'session#destroy' #perform a log out

end
