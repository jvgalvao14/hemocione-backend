# frozen_string_literal: true

class Role < ApplicationRecord
  validates :name, presence: true, uniqueness: { message: :taken, case_sensitive: true }

  has_and_belongs_to_many :users, join_table: :user_roles

  enum name: {
    admin: 'Administrador',
    donor: 'Doador'
  }

  class << self
    Role.names.each do |machine_name, human_name|
      define_method(machine_name.to_s) { Role.find_by(name: human_name) }
    end

    def human_name_for(machine_name)
      Role.names.with_indifferent_access[machine_name]
    end
  end

  def human_name
    Role.human_name_for(name)
  end
end
