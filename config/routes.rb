Rails.application.routes.draw do

  # get '/courses/:course_id/units/:unit_id', to: 'courseunits#index'
  post '/courses/:course_id/units/:unit_id', to: 'courseunits#create'
  delete '/courses/:course_id/units/:unit_id', to: 'courseunits#destroy'
  post '/units/:unit_id/lessons/:lesson_id', to: 'unitlessons#create'
  delete '/units/:unit_id/lessons/:lesson_id', to: 'unitlessons#destroy'
  post '/lessons/:lesson_id/sources/:source_id', to: 'lessonsources#create'
  delete '/lessons/:lesson_id/sources/:source_id', to: 'lessonsources#destroy'

  get 'courses/search', to: 'courses#search'
  get 'units/search', to: 'units#search'
  get 'lessons/search', to: 'lessons#search'
  get 'sources/search', to: 'sources#search'

  resources :courses do
    resources :units, only: [:index, :show] do
      resources :lessons, only: [:index, :show] do
        resources :sources, only: [:index, :show]
      end
    end
  end
  
  resources :units do
    resources :lessons, only: [:index, :show] do
      resources :sources, only: [:index, :show]
    end
  end

  resources :lessons do
    resources :sources, only: [:index, :show]
  end

  resources :sources
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
