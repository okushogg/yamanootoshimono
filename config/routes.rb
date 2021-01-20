Rails.application.routes.draw do
  
  # ポストとコメントに関するルーティング
  resources :posts, only:[:index, :show, :edit, :update, :destroy ] do
    resources :comments, only:[:create, :edit, :update, :destroy ]
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
  
   # 「落とした」に関するルーティング
  get 'drops/phase1' => 'drops#phase1', as: 'phase1' 
  get 'drops/phase2' => 'drops#phase2', as: 'phase2' 
  get 'drops/phase3' => 'drops#phase3', as: 'phase3' 
  get 'drops/phase4' => 'drops#phase4', as: 'phase4' 
  get 'drops/result' => 'drops#result', as: 'result' 
  get 'drops/look_for' => 'drops#look_for', as: 'look_for'
  
  
  # ホームに関するルーティング
  root 'homes#top'
  get 'homes/about' => 'homes#about', as: 'about'
  
  # Userのサインアップ、ログイン機能に関するルーティング
  devise_for :users
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
