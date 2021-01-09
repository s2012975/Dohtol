Rails.application.routes.draw do

  namespace :admins do
    get 'customers/index'
    get 'customers/show'
  end
  root 'customers/homes#top'

  devise_for :admins, controllers: {
    sessions:      'admins/sessions',
    passwords:     'admins/passwords',
    registrations: 'admins/registrations'
  }

  namespace :admins do
    get 'homes/top'
    resources :customers, only:[:index, :show]
    resources :genres, only:[:index, :edit, :create, :update]
    resources :qualifications
    resources :announces
  end




  # controllers以下を記入しないとviewに変更が加えられない。→ルートがきちんと通らない
  devise_for :customers, controllers: {
    sessions:      'customers/sessions',
    passwords:     'customers/passwords',
    registrations: 'customers/registrations'
  }

  namespace :customers do
    get 'homes/top'
    get 'homes/about'
    resources :qualifications, only:[:index, :show] do
      resources :stories do
        resource :likes, only:[:create, :destroy]
      end
    end
    resources :customers, only:[:index, :show, :edit, :update] do
      resources :post_comments, only: [:create, :destroy]
      resource :relationships, only: [:create, :destroy]
      get 'followings' => 'relationships#followings', as: 'followings'
      get 'followedes' => 'relationships#followedes', as: 'followedes'
    end
  end
end
