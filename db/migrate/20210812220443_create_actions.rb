class CreateActions < ActiveRecord::Migration[6.0]
  def change
    create_table :actions do |t|
      t.references :event
      t.references :user
      t.string :type
      t.timestamps
    end
  end
end
