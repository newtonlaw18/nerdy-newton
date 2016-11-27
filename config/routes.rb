Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :posts
  resources :projects
  resources :contacts, only: [:new, :create]
  get 'welcome/index'
  get 'bot' => 'welcome#bot'
  get 'ask_newton', to: 'application#ask_newton'
  root 'welcome#index'

  get '*path' => redirect('/')

end
