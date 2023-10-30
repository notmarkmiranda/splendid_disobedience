Rails.application.routes.draw do
  root "pages#show"

  get "/sign-up", to: "users#new", as: "sign_up"
  post "/sign-up", to: "users#create"
  get "/dashboard", to: "users#show", as: "dashboard"

  get "/sign-in", to: "sessions#new", as: "sign_in"
  post "/sign-in", to: "sessions#create"
  delete "/sign-out", to: "sessions#destroy"

  resources :pools
  resources :questions
end
