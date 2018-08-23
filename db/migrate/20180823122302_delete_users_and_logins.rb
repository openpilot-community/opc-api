class DeleteUsersAndLogins < ActiveRecord::Migration[5.2]
  def change
    drop_table :logins
    drop_table :users
  end
end
