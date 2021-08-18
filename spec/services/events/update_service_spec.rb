# frozen_string_literal: true

module Events
  RSpec.describe UpdateService, type: :service do
    let(:event) { FactoryBot.create :event }

    before { event }

    it { expect(described_class.call(0, {})).to be_nil }
    it { expect(described_class.call(event.id, {})).to eq(event) }
    it { expect(described_class.call(event.id, { name: 'NOME DIFERENCIADO' })).to eq(event.reload) }
  end
end
