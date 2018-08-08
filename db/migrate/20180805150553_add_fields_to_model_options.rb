class AddFieldsToModelOptions < ActiveRecord::Migration[5.2]
  def change
    add_column :vehicle_options, :alternate_name, :string
    add_column :vehicle_options, :what_it_does, :text
    add_column :vehicle_options, :what_it_doesnt_do, :text
    add_column :vehicle_options, :reference_url, :string
  end
end
