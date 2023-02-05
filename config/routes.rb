Rails.application.routes.draw do
  get 'posts/new'
  get 'posts/create'
  get 'posts/index'
  devise_for :users

  devise_scope :user do
    get "/" => "devise/sessions#new"
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "devise/sessions#new"

  resources :posts, only: [:new, :create, :index]
end
