Rails.application.routes.draw do
  root 'recommends#index'
  resources :recommends, only: [:index, :new, :create, :edit, :delete]
end
