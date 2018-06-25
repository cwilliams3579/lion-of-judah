Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations'}
  resources :users
  
  resources :books do
    resources :comments
  end

  resources :posts do
    resources :comments
  end
  
  namespace :admin do
    resources :users
    root to: "users#index"
  end
  
    root to: 'visitors#index'
end
