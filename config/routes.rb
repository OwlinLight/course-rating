Rails.application.routes.draw do
  resources :presentations
  resources :classes
  resources :surveys
  resources :events
  resources :teachers
  resources :users
  resources :students
  resources :groups
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'users#index'
end
