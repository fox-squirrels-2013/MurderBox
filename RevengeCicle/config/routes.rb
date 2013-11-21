RevengeCicle::Application.routes.draw do

  resources :posts, only: [:index, :create, :show]

  root :to => "posts#index"
end
