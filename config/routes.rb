Rails.application.routes.draw do
  devise_scope :user do
    # Redirests signing out users back to sign-in
    delete "sessions", to: "posts#index"
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "posts#index"

  devise_for :users
  resources :posts, only: [:new, :create, :index]

end
