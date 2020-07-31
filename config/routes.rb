Rails.application.routes.draw do
  
   
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :profiles
  devise_for :users
  get 'home/welcome'
  resources :student_informations, only: [:index] do
    member do
      get 'get_branches'
    end
    collection do 
      post 'get_standards'
      post 'get_students'
      post 'get_teachers'
    end
  end
  resources :students, only: [:index, :show] do
    member do
      get 'get_details'
    end
  end
  resources :schools, only: [:index]
  resources :branches, only: [:index]
  resources :standards, only: [:index]
  resources :teachers, only: [:index, :show]
  resources :teacher_informations, only: [:index] do
    member do
      get 'get_branches'
    end
    collection do 
      post 'get_standards'
      post 'get_students'
      post 'get_teachers'
    end
  end
  root 'home#welcome'
  resources :exams, only: [:index, :show] 
  resources :scores, only: [:index] 
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
