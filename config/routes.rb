Rails.application.routes.draw do
  namespace :admin do
    get 'prefectures/index'
    get 'prefectures/show'
    get 'prefectures/edit'
  end
  devise_for :admins
  devise_for :users
  resources :item_genres, only:[:create,:index, :show, :edit, :update]
  
  get 'homes/top'
  get 'homes/about'
  get 'users/show'
  get 'users/edit'
  get 'users/unsubscribe'
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
