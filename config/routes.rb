Rails.application.routes.draw do
  devise_for :users
  root to: 'users#index'
  get '/users', to: 'users#index' # index deve ser removido quando existir controller de posts
  get '/user/profile', to: 'users#show'
  resources :posts
end
