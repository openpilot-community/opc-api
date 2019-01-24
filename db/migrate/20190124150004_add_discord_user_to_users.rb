class AddDiscordUserToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :discord_username, :string
  end
end
