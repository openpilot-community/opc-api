class AddBodyMarkupToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :commontator_comments, :body_markup, :text
    add_column :hardware_items, :description_markup, :text
  end
end
