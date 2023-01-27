Rails.application.routes.draw do
  # Defines the root path route ("/")
  root "articles#index"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Articles CRUD Routes
  resources :articles do
    resources :comments
  end
  # get '/articles', to: 'articles#index'
  # get '/articles/:id', to: 'articles#show'
end
