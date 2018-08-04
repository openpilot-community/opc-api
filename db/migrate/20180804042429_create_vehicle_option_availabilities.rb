class CreateVehicleOptionAvailabilities < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicle_option_availabilities do |t|
      t.string :name

      t.timestamps
    end
  end
end
