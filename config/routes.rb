Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations'}
  resources :users
  
  resources :categories do
    collection do
      get 'search'
    end
  end
  
  resources :books do
    collection do
      get 'search'
    end
    resources :reviews, except: [:index, :show]
    resources :comments, only: [:create]
  end

  resources :posts do
    resources :comments, only: [:create]
  end
  
  namespace :admin do
    resources :users
    root to: "users#index"
  end
  
    root to: 'visitors#index'
    
    mount ActionCable.server => '/cable'
end
