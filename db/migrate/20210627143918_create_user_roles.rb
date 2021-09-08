class CreateUserRoles < ActiveRecord::Migration[6.0]
  def change
    create_join_table :users, :roles, table_name: :user_roles, column_options: { index: true }

    add_foreign_key :user_roles, :users
    add_foreign_key :user_roles, :roles
  end
end
