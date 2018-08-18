class RemoveIndexesOnSpecsTable < ActiveRecord::Migration[5.2]
  def change
    remove_index :vehicle_specs, column: :vehicle_make_id, name: :index_vehicle_specs_on_vehicle_make_id
    remove_index :vehicle_specs, column: :vehicle_make_id, name: :index_vehicle_specs_on_vehicle_model_id

    remove_reference :vehicle_specs, :vehicle_make
    remove_reference :vehicle_specs, :vehicle_model
  end
end
