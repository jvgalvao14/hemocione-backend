# frozen_string_literal: true

module Events
  RSpec.describe ReadService, type: :service do
    let(:events) { FactoryBot.create_list :event, 3 }

    it { expect(described_class.call({})).to match_array(events) }
    it { expect(described_class.call(event: events.first)).to eq([events.first]) }
  end
end
