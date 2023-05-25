Rails.application.routes.draw do
  get '/current_user' , to: 'current_user#index'
  devise_for :users, path: '/', path_names:
    {
      sign_in: 'login',
      sign_out: 'logout',
      registration: 'signup'
    },
    controllers: {
      sessions: 'users/sessions',
      registrations: 'users/registrations'
  }

  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show, :new]
      resources :reservations, only: [:index, :create, :destroy]
      resources :locations, only: [:index, :create]
      resources :services, only: [:index, :create, :destroy]
    end
  end
end
