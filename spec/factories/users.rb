# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    email { Faker::Internet.unique.email }
    document_id { Faker::CPF.numeric }
    password { Faker::Alphanumeric.alphanumeric(number: 10) }
    confirmed_at { Time.current }

    trait :admin_role do
      roles { [create(:role, :admin)] }
    end

    trait :donor_role do
      roles { [create(:role, :donor)] }
    end
  end
end
