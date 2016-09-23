Rails.application.routes.draw do
  get 'comments/create'

  get 'comments/destroy'

  get 'comments/find_commentable'

  get 'likes/create'

  get 'likes/destroy'

  get 'likes/find_likeable'

  resources :posts do
    member do
      put "like" => "posts#upvote"
      put "unlike" => "posts#downvote"
    end
  end
  resources :comments, only: [:create, :destroy]
  devise_for :users
 # get 'home/front'

  authenticated :user do
    root to: 'home#index', as: 'home'
  end
  unauthenticated :user do
    root 'home#front'
    
end

get 'profile' => 'home#profile'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
