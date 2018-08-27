class ChangeUploadedAtToTimeInVideos < ActiveRecord::Migration[5.2]
  def change
    remove_column :videos, :uploaded_at, :string
    add_column :videos, :uploaded_at, :timestamp
    Video.all.each do |video|
      video.save
    end
  end
end
