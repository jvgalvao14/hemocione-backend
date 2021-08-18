# frozen_string_literal: true

class Action < ApplicationRecord
    belongs_to :user
    belongs_to :actionizable, polymorphic: true
end
