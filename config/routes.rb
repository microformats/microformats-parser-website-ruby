Rails.application.routes.draw do
  root to: "submissions#new"

  resources :submissions
  get "microformats", to: "microformats#show", as: :microformats
end
