Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: "users/sessions",
    passwords: "users/passwords"
  }
  root to: 'recommends#index'
  resources :users, only: :show
  resources :recommends, only: [:index, :new, :create, :show, :edit, :delete]
end
