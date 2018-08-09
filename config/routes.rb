Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  scope path: '/api' do
    resources :docs, only: [:index], path: '/swagger'

    scope path: '/v1' do
      resources :users
      resources :vehicle_option_availabilities
      resources :vehicle_configs
      resources :vehicle_config_statuses
      resources :vehicle_models
      resources :vehicle_trims
      resources :vehicle_makes
      # your routes go here
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
