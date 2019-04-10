Rails.application.routes.draw do
    
   root 'pages#index'
    get 'pages/login'
    get 'pages/list'
    get 'pages/index'
    
    resources :movies
  
 
end
