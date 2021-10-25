Rails.application.routes.draw do
  #create user
  resources :users, :only => [:new, :create, :edit, :update]

  root :to => 'properties#index'
  #login
  get '/login' => 'session#new'   #get login form
  post '/login' => 'session#create' #loging successfull
  delete '/login' => 'session#destroy' #logout'

  resources :agents
  resources :properties

  # resources :agentspropertys

end
