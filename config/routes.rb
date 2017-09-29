Rails.application.routes.draw do
  devise_for :users
  root 'recommends#index'
  resources :users
  resources :recommends, only: [:index, :new, :create, :edit, :delete]
end
