class CreateRepositories < ActiveRecord::Migration[5.2]
  def change
    create_table :repositories do |t|
      t.string :name
      t.string :full_name
      t.string :owner_login
      t.string :owner_avatar_url
      t.string :owner_url
      t.string :url

      t.timestamps
    end
  end
end
