Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'pages#landing'

  get '@:username' => 'users#show', as: 'short_user'
  get '@:username/:id' => 'posts#show', as: 'short_post'
  resources :users, only: [:index] do
    resource :posts
  end
  resources :followings, only: [:create, :destroy]
  resources :posts
end
