Rails.application.routes.draw do

  root 'customers/homes#top'

  namespace :admins do
    get 'stories/index'
    get 'stories/show'
  end
  namespace :admins do
    get 'customers/index'
    get 'customers/show'
  end

  devise_for :admins, controllers: {
    sessions:      'admins/sessions',
    passwords:     'admins/passwords',
    registrations: 'admins/registrations'
  }

  namespace :admins do
    get 'homes/top'
    resources :genres, only:[:index, :edit, :create, :update]
    resources :announces
    resources :customers, only:[:index, :show] do
      resources :post_comments, only: [:destroy]
      get 'followings' => 'relationships#followings', as: 'followings'
      get 'followedes' => 'relationships#followedes', as: 'followedes'
    end
    resources :qualifications do
      resources :stories, only:[:show, :index, :destroy]
    end
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
    resources :announces, only:[:show, :index]
    resources :qualifications, only:[:index, :show] do
      resources :stories do
        resource :likes, only:[:create, :destroy]
      end
    end
    resources :customers, only:[:index, :show, :edit, :update] do
      resources :post_comments, only: [:create, :destroy]
      resources :customer_have_qualifications, only: [:create, :destroy]
      resources :customer_study_qualifications, only: [:create, :destroy]
      resource :relationships, only: [:create, :destroy]
      get 'followings' => 'relationships#followings', as: 'followings'
      get 'followedes' => 'relationships#followedes', as: 'followedes'
    end
  end
end
