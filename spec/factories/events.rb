# frozen_string_literal: true

FactoryBot.define do
    factory :event do
        name { Faker::BossaNova.artist }
        institution { FactoryBot.create(:institution) }
        event_type { 'standard' }
        description { Faker::Quotes::Shakespeare.as_you_like_it_quote }
        start_at { Time.now + 1.day }
        end_at { Time.now + 2.days }
    end
  end