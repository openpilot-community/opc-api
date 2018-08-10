class CreateContributors < ActiveRecord::Migration[5.2]
  def change
    create_table :contributors do |t|
      t.string :username
      t.string :avatar_url
      t.string :html_url
      t.integer :contributions

      t.timestamps
    end
  end
end
