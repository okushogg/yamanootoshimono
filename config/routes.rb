Rails.application.routes.draw do
  
 
  devise_for :admin
  devise_for :user
  
  namespace :admin do
    get 'top' => 'homes#top', as: 'top'
    resources :item_genres
    resources :prefectures do
      member do
        post 'create_mountain_name'
      end
    end
    
    
    #post 'prefectures/create_mountain_name' => 'prefectures#create_mountain_name', as: 'create_mountain_name'
    
    
    resources :mountain_names
    resources :users
    resources :posts
  end
  
  scope module: :public do
    root 'homes#top'
    get 'homes/about' => 'homes#about', as: 'about'
    resources :mountain_names
    resources :user
    resources :posts
    resources :item_genres
    resources :prefectures
    resources :comments
  end
  
  get 'users/unsubscribe' => 'users#unsubscribe'
  patch 'users/withdraw' => 'users#withdraw', as: 'delete_user'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
