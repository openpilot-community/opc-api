class AddHeightAndWidthToImages < ActiveRecord::Migration[5.2]
  def change
    add_column :images, :height, :integer
    add_column :images, :width, :integer
  end
end
