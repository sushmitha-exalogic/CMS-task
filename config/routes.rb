Rails.application.routes.draw do
  get 'courses/new'
  get 'course/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'campuses#index'
  resources :campuses
  resources :courses
end
