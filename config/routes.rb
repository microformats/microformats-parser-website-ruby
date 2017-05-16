Rails.application.routes.draw do
  root to: "submissions#new"
  resources :submissions
end
