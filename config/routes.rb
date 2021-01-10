Rails.application.routes.draw do
  
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
