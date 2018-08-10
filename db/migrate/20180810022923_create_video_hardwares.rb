class CreateVideoHardwares < ActiveRecord::Migration[5.2]
  def change
    create_table :video_hardwares do |t|
      t.references :video, foreign_key: true
      t.references :hardware_item, foreign_key: true

      t.timestamps
    end
  end
end
