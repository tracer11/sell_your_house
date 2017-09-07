Rails.application.routes.draw do
   get '/' => 'listings#new'
   post '/listings' => 'listings#create'
   
   get '/listings/:id' => 'listings#show' 
end
