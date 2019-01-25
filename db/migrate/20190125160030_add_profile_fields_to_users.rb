class AddProfileFieldsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :youtube_channel_url, :string
    add_column :users, :twitter_username, :string
  end
end
