Rails.application.routes.draw do
  # mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  scope path: ApplicationResource.endpoint_namespace, defaults: { format: :jsonapi } do
    resources :user_discord_vehicles

  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
