Rails.application.routes.draw do
  
  
  resources :posts, only:[:index, :show, :edit, :update, :delete ] do
    resources :comments, only:[:index, :create, :edit, :update, :delete ]
  end
  
  # アイテムジャンルに関するルーティング
  resources :item_genres
  
  # 都道府県に関するルーティング
  resources :prefectures, only:[:show, :index] do
  # 山名を追加に関するルーティング
      member do
        post 'create_place'
      end
  end
  
  # 「拾った」に関するルーティング
  get 'pick_up/step1' => 'pick_up#step1', as: 'step1' 
  get 'pick_up/step2' => 'pick_up#step2', as: 'step2' 
  get 'pick_up/step3' => 'pick_up#step3', as: 'step3'
  get 'pick_up/step4' => 'pick_up#step4', as: 'step4'
  get 'pick_up/confirm' => 'pick_up#confirm', as: 'confirm' 
  get 'pick_up/complete' => 'pick_up#complete', as: 'complete' 
  post 'pick_up/create' => 'pick_up#create', as: 'pick_up_create' 
  
  # ホームに関するルーティング
  root 'homes#top'
  get 'homes/about' => 'homes#about', as: 'about'
  
  # Userのサインアップ、ログイン機能に関するルーティング
  devise_for :users
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
