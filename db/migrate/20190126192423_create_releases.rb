class CreateReleases < ActiveRecord::Migration[5.2]
  def change
    create_table :releases do |t|
      t.string :name
      t.string :version

      t.timestamps
    end
  end
end
