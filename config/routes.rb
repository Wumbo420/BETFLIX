Rails.application.routes.draw do
    get 'pages/index'
    
    root 'pages#index'
    
    get 'pages/login'
    
    root 'pages#login'
    
    get 'pages/list'
    
    resources :movies
    
    root 'pages#list'
end
