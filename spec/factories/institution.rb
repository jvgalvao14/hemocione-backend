# frozen_string_literal: true

FactoryBot.define do
    factory :institution do
      cnpj { Faker::CNPJ.numeric }
      legal_name { Faker::Games::Zelda.location }
    end
  end
  