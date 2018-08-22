Rails.application.routes.draw do

  root 'welcome#index'
  resources :instructors
  resources :students
  resources :courses
  resources :cohorts
  

 
end