Rails.application.routes.draw do
  get '/clients/:id', to: 'clients#data_show'
  get '/events/:id', to: 'events#data_show'
end