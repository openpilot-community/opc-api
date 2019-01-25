class AddProfileFieldsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :youtube_channel_url, :string
    add_column :users, :twitter_username, :string
    add_column :users, :bio_markdown, :text
    add_column :users, :bio_markup, :text
  end
end
