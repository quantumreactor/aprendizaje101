Rails.application.routes.draw do
  get 'meeting/index'
  get 'meeting/show'
  root to: 'pages#home'
  
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :leads  do
    resources :meetings
  end




end
