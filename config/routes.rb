Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :student
  resources :instructor
  resources :parent
  resources :course
  resources :house

end
