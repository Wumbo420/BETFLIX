Rails.application.routes.draw do
  devise_for :users
# rails routes    
    get 'pages/index'
    get 'movies/index'
    get 'pages/home'
    get 'pages/signup'
    
  resources :movies do
    resources :comments
  end
  
    root 'pages#home'
end