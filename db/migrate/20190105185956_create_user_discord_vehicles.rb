class CreateUserDiscordVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :user_discord_vehicles do |t|
      t.string :discord_user_id
      t.references :vehicle_config, foreign_key: true

      t.timestamps
    end
  end
end
