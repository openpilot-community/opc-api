class CreateVideos < ActiveRecord::Migration[5.2]
  def change
    create_table :videos do |t|
      t.string :title
      t.string :video_url
      t.string :provider_name
      t.string :author
      t.string :author_url
      t.string :thumbnail_url
      t.string :description
      t.string :html
      t.string :uploaded_at

      t.timestamps
    end
  end
end
