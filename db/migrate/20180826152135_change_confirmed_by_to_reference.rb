class ChangeConfirmedByToReference < ActiveRecord::Migration[5.2]
  def change
    remove_column :vehicle_config_capabilities, :confirmed_by, :string
    add_reference :vehicle_config_capabilities, :confirmed_by, index: true
    add_foreign_key :vehicle_config_capabilities, :users, column: :confirmed_by_id
  end
end
