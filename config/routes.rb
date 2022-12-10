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
  # root to: 'users#index'
  root to: 'sessions#login'

  get 'signup', to: 'sessions#signup'
  get 'login', to: 'sessions#login'
  get 'main', to: 'sessions#main'

  get '/logout', to: "sessions#logout", as: "logout"
  post "/", to: "sessions#create", via: :post
  post "/sessions", to: "sessions#create"
  post '/signup', to: 'sessions#login'
end
