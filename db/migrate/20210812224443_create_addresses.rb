class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :address_uuid
      t.references :addressable, polymorphic: true
      t.timestamps
    end
  end
end

