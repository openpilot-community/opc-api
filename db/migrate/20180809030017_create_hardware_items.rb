class CreateHardwareItems < ActiveRecord::Migration[5.2]
  def change
    create_table :hardware_items do |t|
      t.string :name
      t.string :alternate_name
      t.text :description
      t.references :hardware_type, foreign_key: true
      t.boolean :compatible_with_all_vehicles
      t.boolean :available_for_purchase
      t.string :purchase_url
      t.boolean :requires_assembly
      t.boolean :can_be_built
      t.string :build_plans_url
      t.text :notes
      t.string :image_url
      t.string :install_guide_url

      t.timestamps
    end
  end
end
