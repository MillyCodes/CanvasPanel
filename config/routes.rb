Rails.application.routes.draw do


  root 'pages#index'
  devise_for :admins
  resources :admins
  resources :instructors
  resources :students
  resources :courses
  resources :cohorts
  

 
end