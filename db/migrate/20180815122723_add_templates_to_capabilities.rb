class AddTemplatesToCapabilities < ActiveRecord::Migration[5.2]
  def change
    add_column :vehicle_capabilities, :slug, :string
    VehicleCapability.find_each(&:save)
    add_index :vehicle_capabilities, :slug, :unique => true
    
    add_column :hardware_items, :slug, :string
    HardwareItem.find_each(&:save)
    add_index :hardware_items, :slug, :unique => true
    
    add_column :hardware_types, :slug, :string
    HardwareType.find_each(&:save)
    add_index :hardware_types, :slug, :unique => true
    
    add_column :modifications, :slug, :string
    Modification.find_each(&:save)
    add_index :modifications, :slug, :unique => true
    
    add_column :vehicle_make_packages, :slug, :string
    VehicleMakePackage.find_each(&:save)
    add_index :vehicle_make_packages, :slug, :unique => true
    
    add_column :vehicle_option_availabilities, :slug, :string
    VehicleOptionAvailability.find_each(&:save)
    add_index :vehicle_option_availabilities, :slug, :unique => true
    
    add_column :vehicle_options, :slug, :string
    VehicleOption.find_each(&:save)
    add_index :vehicle_options, :slug, :unique => true
    
    add_column :vehicle_config_types, :slug, :string
    VehicleConfigType.find_each(&:save)
    add_index :vehicle_config_types, :slug, :unique => true
  end
end
