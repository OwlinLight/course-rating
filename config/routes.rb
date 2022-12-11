Rails.application.routes.draw do
  get 'klasses/index'
  get 'klasses/show'
  get 'klasses/new'
  get 'klasses/create'
  get 'klasses/edit'
  get 'klasses/update'
  get 'klasses/destroy'
  resources :presentations
  resources :klasses do
    member do
      post :join
    end
  end
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

  get '/logout', to: "sessions#logout", as: "logout"
  post "/", to: "sessions#create", via: :post
  post "/sessions", to: "sessions#create"
  post '/signup', to: 'sessions#login'

  get '/klasses/:id/join', to: 'users#joinClass'

end
