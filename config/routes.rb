Rails.application.routes.draw do
# rails routes    
   root 'pages#index'
    get 'pages/login'
    get 'movies/index'
    get 'pages/index'
    
    resources :movies
  
 
end