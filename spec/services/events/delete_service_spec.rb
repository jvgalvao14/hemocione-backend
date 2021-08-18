# frozen_string_literal: true

module Events
  RSpec.describe DeleteService, type: :service do
    let(:event) { FactoryBot.create :event }

    before { event }

    it { expect { described_class.call(event.id) }.to change(Event, :count).by(-1) }
    it { expect(described_class.call(event.id)).to be_truthy }
    it { expect(described_class.call(0)).to be_truthy }
  end
end
