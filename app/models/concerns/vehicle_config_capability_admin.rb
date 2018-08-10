module VehicleConfigCapabilityAdmin
  extend ActiveSupport::Concern

  included do
    rails_admin do
      list do
        items_per_page 100
      end
    end
  end
end