class ChangeInstitutions < ActiveRecord::Migration[6.0]
    def change
        add_column :institutions, :cnpj, :string
        add_index :institutions, :cnpj, unique: true

        add_column :institutions, :type, :string
        
        remove_column :institutions, :name 
        add_column :institutions, :fantasy_name, :string

        add_column :institutions, :legal_name, :string
        add_index :institutions, :legal_name, unique: true
    end
end
