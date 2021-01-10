Rails.application.routes.draw do
  get 'item_genres/index'
  get 'item_genres/show'
  get 'item_genres/edit'
  get 'homes/top'
  get 'homes/about'
  get 'users/show'
  get 'users/edit'
  get 'users/unsubscribe'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
