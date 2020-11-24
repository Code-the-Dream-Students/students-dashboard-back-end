Rails.application.routes.draw do

  get '/', to: 'home#index'
  # get '/courses/:course_id/units/:unit_id', to: 'courseunits#index'
  post '/courses/:course_id/units/:unit_id', to: 'course_units#create'
  delete '/courses/:course_id/units/:unit_id', to: 'course_units#destroy'
  post '/units/:unit_id/lessons/:lesson_id', to: 'unit_lessons#create'
  delete '/units/:unit_id/lessons/:lesson_id', to: 'unit_lessons#destroy'
  post '/lessons/:lesson_id/sources/:source_id', to: 'lesson_sources#create'
  delete '/lessons/:lesson_id/sources/:source_id', to: 'lesson_sources#destroy'
  
  get 'courses/search', to: 'courses#search'
  get 'units/search', to: 'units#search'
  get 'lessons/search', to: 'lessons#search'
  get 'sources/search', to: 'sources#search'
  get '/courses/:course_id/units/:unit_id/lessons/:lesson_id/week', to: 'weeks#show'
  post '/courses/:course_id/units/:unit_id/lessons/:lesson_id/week', to: 'weeks#create'
  put '/courses/:course_id/units/:unit_id/lessons/:lesson_id/week', to: 'weeks#update'
  delete '/courses/:course_id/units/:unit_id/lessons/:lesson_id/week', to: 'weeks#destroy'

  resources :courses do
    resources :units, only: [:index, :show] do
      resources :lessons, only: [:index, :show] do
        resources :sources, only: [:index, :show]
      end
    end
    resources :weeks, only: [:index, :show]
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
