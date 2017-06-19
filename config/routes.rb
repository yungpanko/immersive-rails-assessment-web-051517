Rails.application.routes.draw do
  get 'appearances/new'

  get 'appearances/create'

  get 'appearances/edit'

  get 'appearances/update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "sessions#index"
  get "/signin" => "sessions#new", as: :login
  get "/" => "sessions#index"
  get "/users/new" => "users#new", as: :signup
  post "/login" => "sessions#create", as: :sessions
  get "/users/:id" => "users#show", as: :user
  post "/users" => "users#create"
  get "/users/:id/edit" => "users#edit", as: :edit_user
  put "/users/:id" => "users#update"
  patch "/users/:id" => "users#update"
  delete "/logout" => "sessions#destroy"
  resources :guests, only: [:index, :show]
  resources :episodes, only: [:index, :show]
  resources :appearances, only: [:new, :create]

end
