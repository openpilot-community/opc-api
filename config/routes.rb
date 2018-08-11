Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  scope path: '/api' do
    resources :docs, only: [:index], path: '/swagger'

    scope path: '/v1' do
      resources :videos
      resources :video_hardwares
      resources :vehicle_options
      resources :vehicle_model_options
      resources :vehicle_make_packages
      resources :vehicle_config_videos
      resources :vehicle_config_types
      resources :vehicle_config_required_packages
      resources :vehicle_config_required_options
      resources :vehicle_config_repositories
      resources :vehicle_config_pull_requests
      resources :vehicle_config_hardwares
      resources :vehicle_config_capabilities
      resources :vehicle_capabilities
      resources :repositories
      resources :pull_requests
      resources :modifications
      resources :logins
      resources :contributors
      resources :hardware_items
      resources :hardware_types
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
