Rails.application.routes.draw do
# rails routes    
    get 'pages/index'
    get 'pages/login'
    get 'movies/index'
    
  resources :movies do
    resources :comments
  end
  
    root 'pages#index'
end