Rails.application.routes.draw do
  namespace :admin do
    get 'posts/index'
    get 'posts/show'
    get 'posts/edit'
  end
  devise_for :admins
  devise_for :users
  
  get 'admin' => 'admins/homes#top'
  namespace :admin do
    resources :item_genres
    resources :prefectures
    resources :users
  end
  
  
  
  
  get 'homes/top'
  get 'homes/about'
  get 'users/show'
  get 'users/edit'
  get 'users/unsubscribe'
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
