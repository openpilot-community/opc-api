class AddSlugToVideos < ActiveRecord::Migration[5.2]
  def change
    add_column :videos, :slug, :string
  end
end
