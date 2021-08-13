class ChangeEvents < ActiveRecord::Migration[6.0]
  def change
    remove_column :events, :date
    add_column :events, :start_at, :datetime
    add_column :events, :end_at, :datetime
    add_column :events, :description, :text
  end
end
