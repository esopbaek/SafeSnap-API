Rails.application.routes.draw do
  namespace :api do
    resources :physicians, only: %i(show) do
      member do
        resources :patients do
          resources :image_sets do
            resources :images, only: %i(create)
          end
        end
      end
    end

    # resources :images
    # resources :sets
  end
end
