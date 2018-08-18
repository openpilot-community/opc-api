class RemoveIndexFromConfigs < ActiveRecord::Migration[5.2]
  def change
    remove_index :vehicle_configs, name: :ix_uniq_configs
  end
end
