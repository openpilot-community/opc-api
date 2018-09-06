class CreateGuideHardwareItems < ActiveRecord::Migration[5.2]
  def change
    create_table :guide_hardware_items do |t|
      t.references :guide, foreign_key: true
      t.references :hardware_item, foreign_key: true

      t.timestamps
    end
  end
end
