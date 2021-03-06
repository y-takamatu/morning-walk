Rails.application.routes.draw do
  devise_for :users
  root to: 'walks#index'
  resources :walks do
    resources :comments, only: :create
    resources :likes, only: [:create,:destroy]
  end

  resources :users, only: :show  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
