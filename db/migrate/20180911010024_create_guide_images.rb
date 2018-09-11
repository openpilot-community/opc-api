class CreateGuideImages < ActiveRecord::Migration[5.2]
  def change
    create_table :guide_images do |t|
      t.references :guide
      t.references :image
      t.timestamps
    end

    create_table :vehicle_config_images do |t|
      t.references :vehicle_config
      t.references :image
      t.timestamps
    end

    create_table :hardware_item_images do |t|
      t.references :hardware_item
      t.references :image
      t.timestamps
    end
  end
end
