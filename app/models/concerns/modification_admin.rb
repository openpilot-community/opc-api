module ModificationAdmin
  extend ActiveSupport::Concern

  included do
    rails_admin do 
      # list do
      #   items_per_page 100
      #   field :title do
      #     # pretty_value do
      #     #   path = bindings[:view].show_path(model_name: 'VehicleConfig', id: bindings[:object].id)
      #     #   bindings[:view].tag(:a, href: path, class: "visible-xs-block visible-sm-block visible-md-block visible-lg-block") << bindings[:object].title
      #     # end
      #   end
      #   field :vehicle_config_type
      #   field :vehicle_make do
      #     # queryable true
      #     visible false
      #     # searchable ["vehicle_make.name"]
      #   end
      #   field :vehicle_model do
      #     # queryable true
      #     visible false
      #     # searchable ["vehicle_model.name", "vehicle_model.id"]
      #   end
      #   sort_by :vehicle_make, :vehicle_model, :year
      # end
      # clone_config do
      #   custom_method :fork_config
      # end
      edit do
        field :name
        field :summary
        field :description
        field :instructions
        field :slug
        field :hardware_types
        # field :vehicle_config_modifications
        field :vehicle_configs
      end
    end
  end
end