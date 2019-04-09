Rails.application.routes.draw do
    get 'pages/index'
    get 'pages/login'
    get 'pages/list'
 root 'pages#index'
end
