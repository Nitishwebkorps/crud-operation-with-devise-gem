

Rails.application.routes.draw do
  devise_for :users
  resources :records
  resources :users
  root 'college#home'
  #get 'contactus', to: 'college#contactus'
  get 'about', to: 'college#about'
  get 'contactus', to: 'college#contactus'
  
  
end