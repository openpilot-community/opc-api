class AddSlackChannelToVehicleMakes < ActiveRecord::Migration[5.2]
  def change
    add_column :vehicle_makes, :slack_channel, :string
  end
end
