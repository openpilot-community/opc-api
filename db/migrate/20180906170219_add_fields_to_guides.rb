class AddFieldsToGuides < ActiveRecord::Migration[5.2]
  def change
    add_column :guides, :author_name, :string
    add_column :guides, :exerpt, :string
    add_column :guides, :published_at, :timestamp
    add_column :guides, :reference_domain, :string
  end
end
