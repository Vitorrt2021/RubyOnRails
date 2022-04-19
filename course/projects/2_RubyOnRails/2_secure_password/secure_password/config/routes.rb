Rails.application.routes.draw do
  get 'sessions/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "user#all"
  post 'user',to: 'user#new'
  get    'sign_in'   => 'sessions#new'
  post   'sign_in'   => 'user#login'
  # delete 'sign_out'  => 'sessions#destroy'
end
