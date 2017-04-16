Rails.application.routes.draw do

#sessions
get '/signin', to: 'sessions#new', as: 'login'
post '/signin', to: 'sessions#create', as: 'sessions'
get '/signout', to: 'sessions#destroy', as: 'logout'

#attractions
get '/attractions', to: 'attractions#index', as: 'attindex'
get '/attractions/new', to: 'attractions#new', as: 'attnew'
get '/attractions/:id', to: 'attractions#show', as: 'attraction'
post '/attractions', to: 'attractions#create'
get '/attractions/:id/edit', to: 'attractions#edit', as: 'attedit'
get '/attractions/:id/ride', to: 'attractions#go_on_ride', as: 'attride'
patch '/attractions/:id', to: 'attractions#update'

#users
resources :users

#homepage
root 'users#index'

end
