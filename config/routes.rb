Rails.application.routes.draw do
# rails routes    

    get 'pages/login'
    get 'movies/index'
    get 'pages/index'
    
    resources :movies do
    resources :comments
  end
    root 'pages#index'
end