class Add3wayToggleToVehicleCapabilities < ActiveRecord::Migration[5.2]
  def change
    add_column :vehicle_capabilities, :default_state, :integer, default: 0
    add_column :vehicle_config_capabilities, :state, :integer, default: 0

    # STATE WILL BE ENUM {0: None, 1: Includes, 2: Excludes}
    # DEFAULTS BEING 0: None
    VehicleCapability.all.each do |vc|
      if vc.value_type.blank?
        vc.value_type = 'state'
      end

      vc.save!
    end
  end
end
