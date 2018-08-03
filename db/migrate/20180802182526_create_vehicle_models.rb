class CreateVehicleModels < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicle_models do |t|
      t.string :name
      t.references :vehicle_make, foreign_key: true
      t.string :tmp_make_name
      
      t.timestamps
    end
  end
end
