Rails.application.routes.draw do
  
  resources :courses do
    resources :units do
      resources :lessons do
        resources :sources
      end
    end
  end
  


  resources :courses
  resources :units
  resources :lessons
  resources :sources
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
