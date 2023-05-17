Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  get 'users', to: 'user#index'
  post 'users', to: 'user#create'
  post 'login', to: 'auth#login'
  post 'register', to: 'auth#register'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
