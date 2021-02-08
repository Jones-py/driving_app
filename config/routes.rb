Rails.application.routes.draw do
  
  get 'automatic/index'
  get 'automatic/show'
  get 'automatic/edit'
  get 'manual/index'
  get 'manual/show'
  get 'manual/edit'
  root 'welcome#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
