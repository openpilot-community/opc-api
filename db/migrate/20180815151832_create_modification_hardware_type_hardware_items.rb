class CreateModificationHardwareTypeHardwareItems < ActiveRecord::Migration[5.2]
  def change
    create_table :modification_hardware_type_hardware_items do |t|
      t.references :modification_hardware_type, foreign_key: true, index: { name: 'ix_mht_hi_ht' }
      t.references :hardware_item, foreign_key: true, index: { name: 'ix_mht_hi_hi' }

      t.timestamps
    end
  end
end
