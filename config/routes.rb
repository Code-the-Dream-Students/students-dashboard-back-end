Rails.application.routes.draw do
  resources :users, only: [:index, :new, :create]   

  root 'sessions#welcome'
  resources :students
  resources :courses
  resources :staffs
  resources :mentors

  get '/students/:id/courses', to: 'students#show_courses'
  get '/courses/:id/students', to: 'courses#show_students'

  get 'login', to: 'sessions#new'   
  post 'login', to: 'sessions#create'   
  get 'welcome', to: 'sessions#welcome'
  get 'authorized', to: 'sessions#page_requires_login'
  get '/logout', to: 'sessions#logout', as: 'logout'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
