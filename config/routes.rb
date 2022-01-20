Rails.application.routes.draw do
  devise_for :users
  root to: 'walks#index'
  resources :walks,only: [:create,:index,:new]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
