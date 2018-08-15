class AddNestedSetStuffToVehicleConfigs < ActiveRecord::Migration[5.2]
  def self.up
    add_column :vehicle_configs, :parent_id, :integer # Comment this line if your project already has this column
    # VehicleConfig.where(parent_id: 0).update_all(parent_id: nil) # Uncomment this line if your project already has :parent_id
    add_column :vehicle_configs, :lft,       :integer
    add_column :vehicle_configs, :rgt,       :integer

    # optional fields
    add_column :vehicle_configs, :depth,          :integer
    add_column :vehicle_configs, :children_count, :integer

    # This is necessary to update :lft and :rgt columns
    VehicleConfig.reset_column_information
    VehicleConfig.rebuild!

    add_index :vehicle_configs, :lft
    add_index :vehicle_configs, :rgt
    add_index :vehicle_configs, :depth
    add_index :vehicle_configs, :parent_id
  end

  def self.down
    remove_column :vehicle_configs, :parent_id
    remove_column :vehicle_configs, :lft
    remove_column :vehicle_configs, :rgt

    # optional fields
    remove_column :vehicle_configs, :depth
    remove_column :vehicle_configs, :children_count
  end
end
