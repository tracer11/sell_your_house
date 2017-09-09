Rails.application.routes.draw do
  get '/' => 'listings#new'
  post '/listings' => 'listings#create' 
  
  get '/listings/:id' => 'listings#show'
  
  get '/listings/:id/edit' => 'listings#edit'
  patch '/listings/:id/' => 'listings#update'
end
