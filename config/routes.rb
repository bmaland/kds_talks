KdsTalks::Application.routes.draw do
  root to: 'home#index'

  resources :talks

  mount HelloEngine::Engine => '/hello'
end
