class AddPrimariesToVehicleConfig < ActiveRecord::Migration[5.2]
  def change
    add_column :vehicle_configs, :primary_repository_id, :integer
    add_column :vehicle_configs, :primary_pull_request_id, :integer

    add_foreign_key :vehicle_configs, :repositories, column: :primary_repository_id
    add_foreign_key :vehicle_configs, :pull_requests, column: :primary_pull_request_id
  end
end
