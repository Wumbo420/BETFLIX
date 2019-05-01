Rails.application.routes.draw do
# rails routes    
    get 'pages/index'
    get 'movies/index'
    get 'pages/home'
    
  resources :movies do
    resources :comments
  end
  
    root 'pages#index'
end