class AddDescriptionMarkupToHardwareTypes < ActiveRecord::Migration[5.2]
  def change
    add_column :hardware_types, :description_markup, :text
  end
end
