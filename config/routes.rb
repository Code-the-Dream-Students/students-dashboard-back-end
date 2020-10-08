Rails.application.routes.draw do
  resources :users, only: [:new, :create]   
  get 'login', to: 'sessions#new'   
  post 'login', to: 'sessions#create'   
  get 'welcome', to: 'sessions#welcome'
  
  root 'students#index'
  get '/mentors', to: 'mentors#index'

  get 'authorized', to: 'sessions#page_requires_login'

  get '/logout', to: 'sessions#logout', as: 'logout'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
