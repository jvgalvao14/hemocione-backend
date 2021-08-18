# frozen_string_literal: true

module Events
    RSpec.describe CreateService, type: :service do
        describe '.call' do
            let(:params) { FactoryBot.attributes_for(:event) }

            it { expect { described_class.call(params) }.to change(Event, :count).by(1) }
            it { expect { described_class.call({}) }.to raise_error(ActiveRecord::RecordInvalid) }
        end
    end
end
