class AddUserRoleToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :user_role, foreign_key: true
    visitor_role = UserRole.create(name: "Visitor", description: "Can view most data.")
    editor_role = UserRole.create(name: "Editor", description: "Can make basic edits and changes to records.")
    admin_role = UserRole.create(name: "Admin", description: "Can make advanced edits and changes to records. Can see additional advanced model data.")
    super_admin_role = UserRole.create(name: "Super Admin", description: "Can make any edit and changes to records. Can see all data.")
    
    User.find_each do |user|
      user.user_role = visitor_role

      user.save!
    end

    super_admin_user = User.find_by(github_username: "jfrux")
    super_admin_user.user_role = super_admin_role

    super_admin_user.save!
  end
end
