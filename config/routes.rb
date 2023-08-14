Rails.application.routes.draw do
  get '/clients/:id', to: 'clients#data_show'
  get '/events/:id', to: 'events#data_show'
  post '/posts/', to: 'posts#create'
  put '/posts/update/:id', to: 'posts#update'
  get 'posts/show/:id', to: 'posts#show'
  get 'posts/show_all', to: 'posts#show_all'
end