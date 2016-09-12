Rails.application.routes.draw do
  namespace :api do
    resources :physicians do
      member do
        resources :patients
      end
    end
    # resources :images
    # resources :sets
  end
end
