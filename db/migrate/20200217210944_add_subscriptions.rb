class AddSubscriptions < ActiveRecord::Migration[6.0]
  def up
    create_table(:subscriptions) do |t|
      t.boolean :donated, default: false
      t.belongs_to :user
      t.belongs_to :event
      t.references :reservation
      t.timestamps
    end
  end

  def down
    drop_table :subscriptions
  end
end
