RailsAdmin.config do |config|
  # config.actions do
  #   all
  #   import
  # end

  # Default global RailsAdminImport options
  config.configure_with(:import) do |config|
    config.logging = true
    config.line_item_limit = 1000
    config.update_if_exists = false
    config.rollback_on_error = false
    # config.header_converter = lambda do |header|
    #   # check for nil/blank headers
    #   next if header.blank?
    #   header.parameterize.underscore
    # end
    config.csv_options = {}
  end
  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true
  config.model VehicleConfig do
    
    list do
      sort_by "year, vehicle_makes.name, vehicle_models.name"
      # field :title do
      #   sort_reverse false
      # end
      field :title
      field :year
      field :vehicle_make
      field :vehicle_model
      field :vehicle_make_package
      field :vehicle_config_status
    end

    field :title
    field :year
    field :vehicle_make
    field :vehicle_model
    field :vehicle_trim
    field :vehicle_config_status
    field :description
    field :vehicle_make_package do
      associated_collection_cache_all false  # REQUIRED if you want to SORT the list as below
      associated_collection_scope do
        # bindings[:object] & bindings[:controller] are available, but not in scope's block!
        vehicle_config = bindings[:object]
        puts vehicle_config.to_yaml
        Proc.new { |scope|
          # scoping all Players currently, let's limit them to the team's league
          # Be sure to limit if there are a lot of Players and order them by position
          scope = scope.where(vehicle_make_id: vehicle_config.vehicle_make_id) if vehicle_config.present?
          # scope = scope.limit(30) # 'order' does not work here
        }
      end
    end
  end
  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
