class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :slack_username
      t.string :github_username

      t.timestamps
    end
  end
end
