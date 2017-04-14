Rails.application.routes.draw do

get '/users/login', to: 'users#login', as: 'login'
resources :users
resources :attractions

root 'users#index'

end
