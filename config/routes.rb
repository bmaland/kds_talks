KdsTalks::Application.routes.draw do
  root to: 'home#index'

  resources :talks
end
