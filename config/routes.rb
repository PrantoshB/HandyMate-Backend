Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show, :new]
      resources :reservations, only: [:index, :create, :destroy]
      resources :locations, only: [:index, :create]
      resources :services, only: [:index, :create, :destroy]
    end
  end
end
