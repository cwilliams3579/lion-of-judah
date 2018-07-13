Rails.application.routes.draw do
  devise_for :users, :controllers => { sessions: 'sessions', registrations: 'registrations', omniauth_callbacks: "users/omniauth_callbacks", confirmations: "confirmations"} 
  # as :user do
  # get 'sign_in' => 'sessions#new', :as => "login"
  # get 'sign_up' => 'registrations#new', :as => "signup"  
  # get 'sign_out' => 'devise/sessions#destroy', :as => "signout"
  # end
  
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
