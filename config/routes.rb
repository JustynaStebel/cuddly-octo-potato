Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  resources :projects do
    resources :comments, only: [:create]
  end
  root "projects#index"

end
