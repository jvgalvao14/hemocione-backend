# frozen_string_literal: true

class Event < ApplicationRecord
    has_many :actions, as: :actionizable
    has_many :users, through: :actions
    belongs_to :institution
    has_one :address, as: :addressable

    validates :name, :description, :event_type, :start_at, :end_at, presence: true
    validates :event_type, inclusion: { in: %w[standard dia_hemocione enterprise remoto] }
    validate :end_at_after_start_at

    private

    def end_at_after_start_at
        errors.add(:end_at, "data de fim deve ser posterior a data de inicio") unless self.end_at.to_i > self.start_at.to_i
    end
end
