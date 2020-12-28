Rails.application.routes.draw do

  root 'customers/homes#top'

  namespace :admins do
    get 'genres/index'
    get 'genres/edit'
    get 'genres/new'
  end

  namespace :admins do
    get 'qualifications/edit'
    get 'qualifications/new'
  end

  namespace :admins do
    get 'homes/top'
  end

  devise_for :admins, controllers: {
    sessions:      'admins/sessions',
    passwords:     'admins/passwords',
    registrations: 'admins/registrations'
  }


  namespace :customers do
    get 'homes/top'
  end

  namespace :customers do
    get 'stories/index'
    get 'stories/show'
    get 'stories/edit'
    get 'stories/new'
  end

  namespace :customers do
    get 'qualifications/index'
    get 'qualifications/show'
  end

  namespace :customers do
    get 'customers/show'
    get 'customers/index'
    get 'customers/edit'
    get 'customers/comfirm'
  end

  namespace :customers do
    get 'homes/top'
    get 'homes/about'
  end

    # controllers以下を記入しないとviewに変更が加えられない。→ルートがきちんと通らない
  devise_for :customers, controllers: {
    sessions:      'customers/sessions',
    passwords:     'customers/passwords',
    registrations: 'customers/registrations'
  }

end
