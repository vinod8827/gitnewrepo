Rails.application.routes.draw do
    post '/event',  to: 'event#create'
end