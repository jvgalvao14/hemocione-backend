# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Event, type: :model do
    describe 'associations' do
        it { is_expected.to have_many(:actions) }
        it { is_expected.to have_many(:users) }
        it { is_expected.to belong_to(:institution) }
        it { is_expected.to have_one(:address) }
    end

    describe 'validations' do
        it { is_expected.to validate_presence_of(:event_type) }
        it { is_expected.to validate_presence_of(:name) }
        it { is_expected.to validate_presence_of(:description) }
        it { is_expected.to validate_presence_of(:start_at) }
        it { is_expected.to validate_presence_of(:end_at) }
        it { is_expected.to validate_inclusion_of(:event_type).in_array(%w[standard dia_hemocione enterprise remoto]) }
    end
end