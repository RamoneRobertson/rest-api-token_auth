Rails.application.routes.draw do
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  resources :users, only: [ :create ]
    namespace :auth do
      post "/login", to: "sessions#create"
      delete "/logout", to: "sessions#destroy"
    end
    resources :challenges
    post "/admin", to: "users#add_admin"
end
