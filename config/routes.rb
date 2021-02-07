Rails.application.routes.draw do

  root to: 'pages#home'

  devise_for :users

  resources :candidates do
    resources :jobs, only: [:new, :create, :show, :update, :destroy]
  end

end
