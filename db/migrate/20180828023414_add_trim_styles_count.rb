class AddTrimStylesCount < ActiveRecord::Migration[5.2]
  def change
    add_column :vehicle_configs, :trim_styles_count, :integer, default: 0
  end
end
