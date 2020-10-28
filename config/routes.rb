Rails.application.routes.draw do

  get '/courses/:course_id/units/:unit_id', to: 'courseunits#index'
  post '/courses/:course_id/units/:unit_id', to: 'courseunits#create'
  delete '/courses/:course_id/units/:unit_id', to: 'courseunits#destroy'

  resources :courses do
    resources :units, only: [:get] do
      resources :lessons, only: [:get] do
        resources :sources, only: [:get]
      end
    end
  end
  
  resources :units do
    resources :lessons, only: [:get] do
      resources :sources, only: [:get]
    end
  end

  resources :lessons do
    resources :sources, only: [:get]
  end

  resources :sources
  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
