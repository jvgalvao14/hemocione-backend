# frozen_string_literal

require 'rails_helper'

RSpec.shared_context 'with admin user' do
  let(:user) { create :user, :admin_role }
end

RSpec.shared_context 'with donor user' do
  let(:user) { create :user, :donor_role }
end
