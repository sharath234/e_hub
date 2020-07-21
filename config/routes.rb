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
    end
  end
  resources :students, only: [:index, :show]
  resources :schools, only: [:index]
  resources :branches, only: [:index]
  resources :standards, only: [:index]
  root 'home#welcome'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
