Rails.application.routes.draw do
  # ポストとコメントに関するルーティング
  resources :posts, only: %i[index show edit update destroy] do
    resources :comments, only: %i[create edit update destroy]
  end

  # アイテムジャンルに関するルーティング
  resources :item_genres

  # 都道府県に関するルーティング
  resources :prefectures, only: %i[show index] do
    # 山名を追加に関するルーティング
    member do
      get 'show_place'
      get 'create_place' => 'prefectures#fake'
      post 'create_place'
      delete 'destroy_place'
    end
  end

  # 「拾った」に関するルーティング
  get 'pick_up/step1' => 'pick_up#step1', as: 'step1'
  get 'pick_up/step2/:id' => 'pick_up#step2', as: 'step2'
  post 'pick_up/create_place' => 'pick_up#create_place', as: 'step2_create_place'
  get 'pick_up/create_place' => 'pick_up#fake' 
  get 'pick_up/step3/:id' => 'pick_up#step3', as: 'step3'
  get 'pick_up/step4/:id' => 'pick_up#step4', as: 'step4'
  get 'pick_up/confirm' => 'pick_up#confirm', as: 'confirm'
  get 'pick_up/complete' => 'pick_up#complete', as: 'complete'
  post 'pick_up/create' => 'pick_up#create', as: 'pick_up_create'
  patch 'pick_up_create' => 'pick_up#update' 
  

  # 「落とした」に関するルーティング
  get 'drops/phase1' => 'drops#phase1', as: 'phase1'
  get 'drops/phase2/:id' => 'drops#phase2', as: 'phase2'
  get 'drops/phase3/:id' => 'drops#phase3', as: 'phase3'
  get 'drops/phase4/:id' => 'drops#phase4', as: 'phase4'
  get 'drops/result' => 'drops#result', as: 'result'
  get 'drops/look_for' => 'drops#look_for', as: 'look_for'
  # 捜索願に関するルーティング
  post 'drops/create_order' => 'drops#create_order', as: 'create_order'
  
  
  # ホームに関するルーティング
  root 'homes#top'
  get 'homes/mypage/:id' => 'homes#mypage', as: 'mypage'
  delete 'homes/destroy_order', as: 'destroy_order'
  get 'homes/adminpage' => 'homes#adminpage', as: 'adminpage'
  

  # Userのサインアップ、ログイン機能に関するルーティング
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
  end
  
  # Userの退会に関するルーティング
  get 'unsubscribe/:name' => 'homes#unsubscribe', as: 'confirm_unsubscribe'
  patch ':id/withdraw/:name' => 'homes#withdraw', as: 'withdraw_user'
  put 'withdraw/:name' => 'users#withdraw'
  
  # 通知に関するルーティング
  resources :notifications, only: :index do
    collection do
      delete 'destroy_all'
    end
  end
  
  
  # 例外処理
  mount Refile.app, at: Refile.mount_point, as: :refile_app
  get '*path', to: 'application#render_404'
end
