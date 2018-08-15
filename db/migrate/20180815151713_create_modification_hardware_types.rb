class CreateModificationHardwareTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :modification_hardware_types do |t|
      t.references :modification, foreign_key: true
      t.references :hardware_type, foreign_key: true

      t.timestamps
    end
  end
end
