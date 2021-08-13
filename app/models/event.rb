# frozen_string_literal: true

class Event < ApplicationRecord
  has_many :subscriptions
  has_many :subscribers, through: :subscriptions, foreign_key: "user_id", class_name: "User"
  belongs_to :institution
  has_one :event_address
end
