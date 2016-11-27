Rails.application.routes.draw do
  resources :users
  resources :posts
  resources :projects
  get 'welcome/index'
  root 'welcome#index'
end
