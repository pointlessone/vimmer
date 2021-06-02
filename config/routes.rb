Rails.application.routes.draw do
  resources :posts
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'pages#landing'

  get '@:username' => 'posts#index', as: 'short_user'
  get '@:username/:id' => 'posts#show', as: 'short_post'
  resources :users, only: [:index] do
    resource :posts
  end
end
