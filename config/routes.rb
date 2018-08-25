Rails.application.routes.draw do
  get 'recipes/index'
  get 'recipes/show'
  get 'recipes/new'
  get 'users/index'
  get 'users/show'
  get 'users/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
