Rails.application.routes.draw do
  
root 'pages#home'

get 'pages/about', to: 'pages#about'

get 'pages/pics' => 'pages#pics'

get 'articles' => 'articles#index'

get 'articles/new' => 'articles#new'

resources :articles
end 