# frozen_string_literal

require 'spec_helper'
require 'cancan/matchers'
require 'shared/context/ability_context'

RSpec.describe FrequentQuestionAbility, type: :model do
  subject(:ability) { described_class.new(user) }

  context 'when user is admin' do
    include_context 'with admin user'

    it { is_expected.to be_able_to :manage, FrequentQuestion }
  end

  context 'when user is donor' do
    include_context 'with donor user'

    it { is_expected.to be_able_to :read, FrequentQuestion }
    it { is_expected.not_to be_able_to :create, FrequentQuestion }
    it { is_expected.not_to be_able_to :update, FrequentQuestion }
    it { is_expected.not_to be_able_to :destroy, FrequentQuestion }
  end
end
