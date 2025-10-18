Rails.application.routes.draw do
  get 'staticresponses/show'
  get 'cortexqueries/index'
  get 'cortexqueries/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  root to: "cortexqueries#index"

  get "/search", to: "cortexqueries#search"

  resources :staticqueries, only: [:show] do
    resources :staticresponses, only: [:show]
  end
end
