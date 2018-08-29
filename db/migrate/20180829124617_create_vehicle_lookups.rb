class CreateVehicleLookups < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicle_lookups do |t|
      t.integer :year
      t.references :vehicle_make, foreign_key: true, null: false
      t.references :vehicle_model, foreign_key: true, null: false
      t.references :vehicle_config, foreign_key: true, null: true
      t.references :user, foreign_key: true, null: true
      t.integer :lookup_count, default: 0, null: false
      t.string :slug, null: false
      t.boolean :refreshing, default: false
      t.timestamps
    end
  end
end
