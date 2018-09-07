class AddViewsCountToVehicleConfigs < ActiveRecord::Migration[5.2]
  def change
    add_column :vehicle_configs, :views_count, :integer, default: 0, null: false
    add_column :guides, :views_count, :integer, default: 0, null: false
    add_column :videos, :views_count, :integer, default: 0, null: false
    # add_column :vehicle_configs, :owner_count, :integer, default: 0, null: false
    # add_column :vehicle_configs, :likers_count, :integer, :default => 0
    add_column :vehicle_configs, :followers_count, :integer, :default => 0, null: false
    add_column :guides, :likers_count, :integer, :default => 0, null: false
    add_column :videos, :likers_count, :integer, :default => 0, null: false
  end
end
