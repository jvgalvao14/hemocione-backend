# frozen_string_literal

require 'rails_helper'

RSpec.shared_examples 'without permission' do
  context 'without permissions' do
    include_context 'with donor user'
    it { expect(response).to have_http_status :forbidden }
    it { expect(response.body).to eq('') }
  end
end
