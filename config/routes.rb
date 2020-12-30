Rails.application.routes.draw do

  root 'customers/homes#top'

  devise_for :admins, controllers: {
    sessions:      'admins/sessions',
    passwords:     'admins/passwords',
    registrations: 'admins/registrations'
  }

  namespace :admins do
    get 'homes/top'
    resources :genres, only:[:index, :edit, :new]
    resources :qualifications, only:[:edit, :new]
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
    get 'customers/comfirm'
    resources :stories, only:[:index, :show, :edit, :new]
    resources :qualifications, only:[:index, :show]
    resources :customers, only:[:index, :show, :edit]
    resources :post_comments, only: [:create, :destroy]
  end

end
