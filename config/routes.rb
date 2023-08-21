Rails.application.routes.draw do
  resources :products do
    collection do
      get :search # Define a collection route named 'search'
      get :search_via_active_record
      get :search_via_inactive_record
    end

    member do 
      get :personal_detail
    end
  end

  resources :products
  resources :triangles
  get '/clients/:id', to: 'clients#data_show'
  get '/events/:id', to: 'events#data_show'
  post '/posts/', to: 'posts#create'
  put '/posts/update/:id', to: 'posts#update'
  get 'posts/show/:id', to: 'posts#show'
  get 'posts/show_all', to: 'posts#show_all'
end