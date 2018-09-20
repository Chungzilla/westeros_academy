Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'home/index'

  resources :users
  resources :admins
  resources :students
  resources :instructors
  resources :parents
  resources :courses
  resources :houses
  resources :enrollments

  authenticated do 
    root :to => 'students#index'
  end

  root :to => 'home#index'

end

