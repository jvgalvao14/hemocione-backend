class CreateEntityAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :entity_adresses do |t|
      t.string :address_uuid
      t.references :entity
      t.string :type
      t.timestamps
    end
  end
end

