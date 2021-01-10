Rails.application.routes.draw do
  
  namespace :public do
    get 'mountain_names/index'
    get 'mountain_names/edit'
  end
  namespace :public do
    get 'comments/new'
    get 'comments/show'
    get 'comments/edit'
  end
  namespace :public do
    get 'prefecture/index'
    get 'prefecture/show'
  end
  namespace :public do
    get 'item_genres/index'
    get 'item_genres/show'
  end
  namespace :public do
    get 'posts/index'
    get 'posts/show'
    get 'posts/new'
    get 'posts/edit'
  end
  namespace :public do
    get 'users/show'
    get 'users/edit'
    get 'users/unsubscribe'
  end
  namespace :admin do
    get 'mountain_names/index'
    get 'mountain_names/edit'
  end
  devise_for :admin
  devise_for :user
  
  get 'admin' => 'admins/homes#top'
  
  namespace :admin do
    resources :item_genres
    resources :prefectures
    resources :users
    resources :posts
  end
  
  namespace :public do
    get 'home/top'
    get 'home/about'
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
