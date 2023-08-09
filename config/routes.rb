Rails.application.routes.draw do
  resources :clients
    post '/event',  to: 'event#create'
end