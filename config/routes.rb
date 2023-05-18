Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :reservations, only: [:index, :create, :destroy]
      resources :locations, only: [:index]
      resources :services, only: [:index, :create, :destroy]
    end
  end
end
