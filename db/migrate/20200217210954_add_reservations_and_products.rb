class AddReservationsAndProducts < ActiveRecord::Migration[6.0]
  def up
    create_table(:products) do |t|
      t.string :name
      t.float :price
      t.timestamps
    end

    create_table(:reservations) do |t|
      t.belongs_to :product
      t.belongs_to :user
      t.timestamps
    end
  end

  def down
    drop_table :subscriptions
  end
end
