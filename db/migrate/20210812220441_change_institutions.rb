class ChangeInstitutions < ActiveRecord::Migration[6.0]
  def change
    add_column :institutions, :cnpj, :string
    add_column :institutions, :type, :string
  end
end
