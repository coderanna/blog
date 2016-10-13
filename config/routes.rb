Rails.application.routes.draw do
  
root 'pages#home'

get 'pages/about', to: 'pages#about'

get 'pages/pics' => 'pages#pics'

get 'articles' => 'articles#index'

get 'articles/new' => 'articles#new'

get 'signup' => 'users#new'
resources :users, except: [:new] #or you can use this too: post 'users' => 'users#create'

resources :articles
end 