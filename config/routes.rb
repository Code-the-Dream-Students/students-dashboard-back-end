Rails.application.routes.draw do
  # get 'lessons/index'
  # get 'lessons/show'
  # get 'sources/index'
  # get 'sources/show'
  resources :lessons
  resources :sources
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
