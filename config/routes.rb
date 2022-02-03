Rails.application.routes.draw do
  resources :tweets do
    resource :like
    resource :retweet
  end

  root to: "pages#index"
  get "index", to: "pages#index"
  get "content", to: "pages#content"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
