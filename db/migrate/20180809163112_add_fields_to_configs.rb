class AddFieldsToConfigs < ActiveRecord::Migration[5.2]
  def change
    add_reference :vehicle_configs, :vehicle_make_package, :foreign_key => true
  end
end
