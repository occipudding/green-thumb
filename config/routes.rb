Rails.application.routes.draw do
  resources :trees, except: :index
  resources :locations, only: [:index, :show]
  resources :users
end
