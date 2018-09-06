class CreateModificationHardwareItems < ActiveRecord::Migration[5.2]
  def change
    create_table :modification_hardware_items do |t|
      t.references :modification, foreign_key: true
      t.references :hardware_item, foreign_key: true
      t.string :used_for

      t.timestamps
    end
  end
end
