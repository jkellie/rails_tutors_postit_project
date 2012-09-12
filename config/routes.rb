Postit::Application.routes.draw do
  root :to => 'posts#index'
  
  resources :users
  
  resources :posts do
    resources :comments
  end
  
  match 'posts/voteup/:id' => 'posts#voteup', :as => 'voteup_post'
  match 'posts/votedown/:id' => 'posts#votedown', :as => 'votedown_post'
end
