Rails.application.routes.draw do
  resources :trees
  resources :locations
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
