# frozen_string_literal: true

FactoryBot.define do
    factory :address do
        address_uuid { Faker::Alphanumeric.alphanumeric(number: 32) }
    end
end