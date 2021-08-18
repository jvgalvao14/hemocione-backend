class CreateActions < ActiveRecord::Migration[6.0]
  def change
    create_table :actions do |t|
      t.string :action_type
      t.references :actionizable, polymorphic: true
      t.belongs_to :user
      t.timestamps
    end
  end
end
