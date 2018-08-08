class CreateVehicleOptionStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicle_option_statuses do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
