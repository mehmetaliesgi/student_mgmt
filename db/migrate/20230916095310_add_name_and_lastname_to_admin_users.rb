class AddNameAndLastnameToAdminUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :admin_users, :name, :string
    add_column :admin_users, :lastname, :string
  end
end
