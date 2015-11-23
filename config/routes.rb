Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :posts 
  get 'posts/tags/:tag', to: 'posts#by_tag'
  
  resources :users
  root to: 'visitors#index'
  

end
