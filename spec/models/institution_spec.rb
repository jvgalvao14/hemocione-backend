# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Institution, type: :model do
    describe 'associations' do
        it { is_expected.to have_many(:institution_addresses) }
    end

    describe 'validations' do
        let(:institution) { FactoryBot.create :institution }

        it { is_expected.to validate_presence_of(:legal_name) }
        it { is_expected.to validate_presence_of(:cnpj) }
        it { is_expected.to validate_uniqueness_of(:legal_name) }
        it { is_expected.to allow_value(Faker::CNPJ.numeric).for(:cnpj) }
        it { is_expected.not_to allow_value('00000000000000').for(:cnpj) }
        
        it 'doesnt allow not unique CPNJs' do
            same_cnpj = institution.cnpj
            is_expected.not_to allow_value(same_cnpj).for(:cnpj)
        end
    end
end