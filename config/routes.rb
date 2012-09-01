Postit::Application.routes.draw do
  resources :comments

  root :to => 'posts#index'
  
  resources :users
  
  resources :posts
end
