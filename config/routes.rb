Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :students
  resources :mentors
  resources :staffs

  post 'auth/login', to: 'authentication#authenticate'
  post 'signup', to: 'users#create'

  get 'users', to: 'users#index'
  put 'users/:id', to: 'users#update'
  get 'logout', to: 'users#logout'
  
end
