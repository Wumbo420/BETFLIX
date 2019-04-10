Rails.application.routes.draw do
    
   root 'pages#index'
    get 'pages/login'
    get 'movies/index'
    get 'pages/index'
    
    resources :movies
  
 
end
