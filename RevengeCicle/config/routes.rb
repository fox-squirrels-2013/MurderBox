RevengeCicle::Application.routes.draw do

  resources :posts, only: [:index, :create, :show]
  resources :comments, only: [:create, :update, :show]

  root :to => "posts#index"
end
