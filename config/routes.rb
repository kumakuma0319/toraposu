Rails.application.routes.draw do
  devise_for :users
  root to: 'hotels#index'
  resources :hotels, only: [:create, :new, :show, :edit, :update]
end
