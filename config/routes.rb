Rails.application.routes.draw do
  resources :automatics
  resources :manuals
  resources :welcomes
  root 'welcome#index'
  devise_for :users
end
