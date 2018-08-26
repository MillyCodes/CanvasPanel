Rails.application.routes.draw do


  root 'pages#index'
  devise_for :admins
  resources :instructors
  resources :students
  resources :courses
  resources :cohorts
  

 
end