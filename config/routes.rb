Rails.application.routes.draw do
  get "pages/show"
  root "pages#show"
end
