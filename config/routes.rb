Rails.application.routes.draw do
  get 'kittens/new'
  get 'kittens/create'
  get 'kittens/index'
  get 'kittens/show'
  get 'kittens/edit'
  get 'kittens/update'
  get 'kittens/delete'
  resources :kittens
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "kittens#index"
end
