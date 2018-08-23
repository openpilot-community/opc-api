class AddMoreFieldsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :slack_username, :string
    add_column :users, :github_username, :string
    # add_column :users, :github_username, :string
    
  end
end
