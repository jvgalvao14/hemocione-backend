class AddRoles < ActiveRecord::Migration[6.0]
  def change
    create_table(:roles) do |t|
      t.string 'name'
      t.timestamps
    end

    create_table(:user_roles) do |t|
      t.belongs_to :user
      t.belongs_to :role
      t.timestamps
    end

    add_index :roles, :name, unique: true
  end
end
