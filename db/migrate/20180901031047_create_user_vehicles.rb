class CreateUserVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :user_vehicles do |t|
      t.references :user, foreign_key: true
      t.references :vehicle_config, foreign_key: true
      t.references :vehicle_trim, foreign_key: true
      t.references :vehicle_trim_style, foreign_key: true
      t.string :source_image_url
      t.timestamps
    end
  end
end
