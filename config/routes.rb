Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations', :omniauth_callbacks => "users/omniauth_callbacks"}
  resources :users
  
  resources :categories do
    collection do
      get 'search'
    end
  end
  
  resources :books do
    resources :reviews, except: [:index, :show]
    resources :comments, :likes, only: [:create]
    # resources :likes, only: [:create]
    collection do
      get 'search'
    end
  end

  resources :posts do
    resources :comments, only: [:create]
  end
  
  namespace :admin do
    resources :users
    root to: "users#index"
  end
  
    root to: 'visitors#index'
    
    # mount ActionCable.server => '/cable'
end
