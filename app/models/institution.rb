# frozen_string_literal: true

class Institution < ApplicationRecord
    has_many :institution_addresses 
end