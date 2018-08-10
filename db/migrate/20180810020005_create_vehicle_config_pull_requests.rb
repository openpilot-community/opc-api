class CreateVehicleConfigPullRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicle_config_pull_requests do |t|
      t.references :vehicle_config, foreign_key: true
      t.references :pull_request, foreign_key: true

      t.timestamps
    end
  end
end
