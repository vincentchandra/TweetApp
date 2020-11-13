Rails.application.routes.draw do

  post 'comments/:post_id/create' => 'comments#create'
  post 'comments/:id/destroy' => 'comments#destroy'

  post 'likes/:post_id/create' => 'likes#create'
  post 'likes/:post_id/destroy' => 'likes#destroy'

  post 'logout' => 'users#logout'
  post 'login' => 'users#login'
  get 'login' => 'users#login_form'
  get 'users/:id/edit' => 'users#edit'
  post 'users/:id/update' => 'users#update'
  post 'users/create' => 'users#create'
  get 'signup' => 'users#new'
  get 'users/index' => 'users#index'
  get 'users/:id' => 'users#show'
  get 'users/:id/likes' => 'users#likes'

  get 'posts/index' => 'posts#index'
  post 'posts/create' => 'posts#create'
  get 'posts/new' => 'posts#new'
  get 'posts/:id' => 'posts#show'
  get 'posts/:id/edit' =>'posts#edit'
  post 'posts/:id/update' =>'posts#update'
  post 'posts/:id/destroy' => 'posts#destroy'

  get '/' => 'home#top'
  get 'about' => 'home#about'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
