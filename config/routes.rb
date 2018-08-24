Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'users#index'

  resources :users
  resources :admins
  resources :students
  resources :instructors
  resources :parents
  resources :courses
  resources :houses
  resources :enrollments

end

