Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users
  resources :candidates
  resources :jobs
  resources :companies
  resources :contacts
end
