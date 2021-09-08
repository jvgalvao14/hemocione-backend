# frozen_string_literal: true

FactoryBot.define do
  factory :role do
    name { Role.names.values.sample }

    Role.names.each do |machine_name, human_name|
      trait machine_name.to_sym do
        name { human_name }
      end

      Role.create(name: human_name) if Role.table_exists?
    end

    initialize_with { Role.where(name: name).first_or_create }
  end
end
