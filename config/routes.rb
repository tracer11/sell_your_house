Rails.application.routes.draw do
   get '/' => 'listings#new'
   post '/listings' => 'listings#create'
    
end
