class AddStatusFieldToModels < ActiveRecord::Migration[5.2]
  def change
    add_column :vehicle_models, :status, :integer, default: 1
  end
end
