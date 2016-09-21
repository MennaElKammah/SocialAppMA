Rails.application.routes.draw do
  get 'comments/create'

  get 'comments/destroy'

  get 'comments/find_commentable'

  get 'likes/create'

  get 'likes/destroy'

  get 'likes/find_likeable'

  resources :posts
  resources :comments, only: [:create, :destroy]
  devise_for :users
 # get 'home/front'

  authenticated :user do
    root to: 'home#index', as: 'home'
  end
  unauthenticated :user do
    root 'home#front'
    
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
