Rails.application.routes.draw do
  namespace :api do
    resources :patients
    resources :images
    resources :categories
  end
end
