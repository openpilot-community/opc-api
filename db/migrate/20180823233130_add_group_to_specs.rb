class AddGroupToSpecs < ActiveRecord::Migration[5.2]
  def change
    add_column :vehicle_trim_style_specs, :group, :string
  end
end
