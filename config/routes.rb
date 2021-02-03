Rails.application.routes.draw do
  resources :candidates
  root to: 'pages#home'
  devise_for :users

end
