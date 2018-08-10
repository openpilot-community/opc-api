class CreateVehicleConfigRepositories < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicle_config_repositories do |t|
      t.references :vehicle_config, foreign_key: true
      t.references :repository, foreign_key: true

      t.timestamps
    end
  end
end
