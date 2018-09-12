class CreateVehicleConfigThreddedMessageboards < ActiveRecord::Migration[5.2]
  def change
    add_reference :vehicle_configs, :thredded_messageboard, index: true
    change_column_default :thredded_user_details, :moderation_state, 1
  end
end
