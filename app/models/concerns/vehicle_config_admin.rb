module VehicleConfigAdmin
  extend ActiveSupport::Concern

  included do
    rails_admin do 
      list do
        items_per_page 100
        field :title do
          # pretty_value do
          #   path = bindings[:view].show_path(model_name: 'VehicleConfig', id: bindings[:object].id)
          #   bindings[:view].tag(:a, href: path, class: "visible-xs-block visible-sm-block visible-md-block visible-lg-block") << bindings[:object].title
          # end
        end
        
        field :type
        field :vehicle_make do # (4)
          queryable true
          visible false
          searchable ["vehicle_make.name", "vehicle_make.id"]
        end
        field :vehicle_model do # (4)
          queryable true
          visible false
          searchable ["vehicle_model.name", "vehicle_model.id"]
        end
        sort_by :vehicle_make, :vehicle_model, :year
        
      end

      edit do
        field :type
        field :title
        field :year
        field :vehicle_make
        field :vehicle_model
        field :vehicle_trim
        field :vehicle_config_status
        field :description
        field :forks
        field :parent
        field :vehicle_capabilities
        field :vehicle_options
        field :hardware_items
        field :vehicle_make_package do
          associated_collection_cache_all false  # REQUIRED if you want to SORT the list as below
          associated_collection_scope do
            # bindings[:object] & bindings[:controller] are available, but not in scope's block!
            vehicle_config = bindings[:object]
            # puts vehicle_config.to_yaml
            Proc.new { |scope|
              # scoping all Players currently, let's limit them to the team's league
              # Be sure to limit if there are a lot of Players and order them by position
              scope = scope.where(vehicle_make_id: vehicle_config.vehicle_make_id) if vehicle_config.present?
              # scope = scope.limit(30) # 'order' does not work here
            }
          end
        end
      end
    end
  end
end