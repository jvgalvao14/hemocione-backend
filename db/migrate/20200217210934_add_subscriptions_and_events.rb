class AddSubscriptionsAndEvents < ActiveRecord::Migration[6.0]
  def change
    create_table(:institutions) do |t|
      t.string 'name'
      t.timestamps
    end

    create_table(:events) do |t|
      t.string 'name'
      t.string 'type'
      t.belongs_to :institution
      t.timestamps
    end

    create_table(:subscriptions) do |t|
      t.boolean :donated, default: false
      t.belongs_to :user
      t.belongs_to :event
      t.timestamps
    end
  end
end
