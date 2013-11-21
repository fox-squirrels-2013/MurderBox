RevengeCicle::Application.routes.draw do

  resources :posts, only: [:index]

  root :to => posts_path
end
