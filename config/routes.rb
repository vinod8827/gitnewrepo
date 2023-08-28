Rails.application.routes.draw do
  ActiveAdmin.routes(self)

# user auth via token
post '/auth/login', to: 'auth#login'

get '/products', to: 'product#show'

end
