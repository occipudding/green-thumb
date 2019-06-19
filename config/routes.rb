Rails.application.routes.draw do
  get 'login/new'
  resources :trees, except: :index
  resources :locations, only: [:index, :show]
  resources :users
  resources :login, only: [:new, :create]
  delete "/logout", to: "login#destroy"
  root "locations#index"
  # get 'sessions/new'
  # get '/login' => 'sessions#new'
  # post '/login' => 'sessions#create'
  # post '/logout' => 'sessions#destroy'
end
