class CreateReleaseFeatures < ActiveRecord::Migration[5.2]
  def change
    create_table :release_features do |t|
      t.references :release, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
