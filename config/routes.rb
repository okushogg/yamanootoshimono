Rails.application.routes.draw do
  
 
 
  devise_for :admin
  devise_for :user
  
  get 'pick_up/step1' => 'pick_up#step1', as: 'step1' 
  get 'pick_up/step2' => 'pick_up#step2', as: 'step2' 
  get 'pick_up/step3' => 'pick_up#step3', as: 'step3'
  get 'pick_up/step4' => 'pick_up#step4', as: 'step4'
  get 'pick_up/confirm' => 'pick_up#confirm', as: 'confirm' 
  get 'pick_up/complete' => 'pick_up#complete', as: 'complete' 
  put 'pick_up/create' => 'pick_up#create', as: 'pick_up_create' 
  
  
  namespace :admin do
    get 'top' => 'homes#top', as: 'top'
    
    resources :prefectures, only:[:show, :index] do
      member do
        post 'create_mountain_name'
      end
    end
  
    
    resources:mountain_names, only:[:show] do
        resources:item_genres
    end
   resources:posts, only:[:new, :create]
  end
    resources :users
    
    
    
    
   
  
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
