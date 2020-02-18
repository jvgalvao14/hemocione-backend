class AddInstitutionsAndEvents < ActiveRecord::Migration[6.0]
  def up
    create_table(:institutions) do |t|
      t.string :name
      t.timestamps
    end

    create_table(:events) do |t|
      t.string :name
      t.string :type
      t.datetime :date
      t.belongs_to :institution
      t.timestamps
    end
  end

  def down
    drop_table :institutions
    drop_table :events
  end
end
