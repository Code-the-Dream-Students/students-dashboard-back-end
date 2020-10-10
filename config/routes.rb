Rails.application.routes.draw do
  resources :users, only: [:new, :create]   

  resources :students
  get 'login', to: 'sessions#new'   
  post 'login', to: 'sessions#create'   
  get 'welcome', to: 'sessions#welcome'
  
  root 'students#index'
  get '/mentors', to: 'mentors#index'
  get '/stuff', to: 'stuff#index'
  get '/users', to: 'users#show'

  get 'authorized', to: 'sessions#page_requires_login'

  get '/logout', to: 'sessions#logout', as: 'logout'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
