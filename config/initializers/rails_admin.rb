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
  config.main_app_name = ["vehicledb", "admin"]
  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    clone
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
