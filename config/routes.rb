Rails.application.routes.draw do
  resources :tests

  resources :characters

  root 'dashboard#index'
  devise_for :users, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout'}
  resources :dashboard
  resources :characters
end
