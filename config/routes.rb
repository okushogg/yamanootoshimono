Rails.application.routes.draw do
  get 'prefectures/index'
  get 'prefectures/show'
  get 'pick_up/step1'
  get 'pick_up/step2'
  get 'pick_up/step3'
  get 'pick_up/step4'
  get 'pick_up/complete'
  get 'homes/top'
  get 'homes/about'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
