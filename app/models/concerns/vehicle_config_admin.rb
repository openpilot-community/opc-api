module VehicleConfigAdmin
  extend ActiveSupport::Concern
  included do
    rails_admin do 
      list do
        items_per_page 100
        scopes [:honda, :honda_base, :honda_standard, :toyota, :toyota_base, :toyota_standard, :unscoped]
        field :year
        field :vehicle_make do
          label "Make"
          # queryable true
          # visible false
          # searchable ["vehicle_make.name"]
        end
        field :vehicle_model do
          label "Model"
          # queryable true
          # visible false
          # searchable ["vehicle_model.name", "vehicle_model.id"]
        end
        field :vehicle_trim do
          label "Trim"
          # queryable true
          # visible false
          # searchable ["vehicle_model.name", "vehicle_model.id"]
        end
        # field :name do
        #   # searchable true
        #   # pretty_value do
        #   #   path = bindings[:view].show_path(model_name: 'VehicleConfig', id: bindings[:object].id)
        #   #   bindings[:view].tag(:a, href: path, class: "visible-xs-block visible-sm-block visible-md-block visible-lg-block") << bindings[:object].title
        #   # end
        # end
        field :vehicle_config_type do
          label "Type"
        end
        
        sort_by :vehicle_make, :vehicle_model, :year
      end
      # clone_config do
      #   custom_method :fork_config
      # end
      edit do
        field :parent
        field :vehicle_config_type
        field :title
        field :year do
          read_only do
            !bindings[:object].parent.blank?
          end
        end
        
        field :vehicle_make
        field :vehicle_model do
          associated_collection_cache_all false  # REQUIRED if you want to SORT the list as below
          associated_collection_scope do
            vehicle_config = bindings[:object]
            Proc.new { |scope|
              scope = scope.where(vehicle_make_id: vehicle_config.vehicle_make_id) if vehicle_config.present?
              # scope = scope.limit(30) # 'order' does not work here
            }
          end
        end
        field :vehicle_trim do
          associated_collection_cache_all false  # REQUIRED if you want to SORT the list as below
          associated_collection_scope do
            vehicle_config = bindings[:object]
            Proc.new { |scope|
              scope = scope.where(
                vehicle_model_id: vehicle_config.vehicle_model_id
              ).distinct.order(:trim) if vehicle_config.present?
              # scope = scope.limit(30) # 'order' does not work here
            }
          end
        end
        field :vehicle_config_status
        field :description
        field :slug
        field :forks
        field :vehicle_config_capabilities
        field :vehicle_capabilities
        field :vehicle_config_modifications
        field :modifications
        # field :vehicle_config_required_options
        # field :hardware_items
        field :vehicle_make_package do
          associated_collection_cache_all false  # REQUIRED if you want to SORT the list as below
          associated_collection_scope do
            vehicle_config = bindings[:object]
            Proc.new { |scope|
              scope = scope.where(vehicle_make_id: vehicle_config.vehicle_make_id) if vehicle_config.present?
            }
          end
        end
      end
    end
  end
end