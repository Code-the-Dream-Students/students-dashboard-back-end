Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :students
  resources :mentors
  resources :staffs

  post 'auth/login', to: 'authentication#authenticate'
  get 'logout', to: 'users#logout'
  post 'signup', to: 'users#create'
  
end
