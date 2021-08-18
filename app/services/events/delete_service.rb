# frozen_string_literal: true

module Events
  class DeleteService < BaseService
    attr_reader :event

    def initialize(event_id)
      @event = Event.find_by(id: event_id)
    end

    def execute
      return true if event.blank?

      event.destroy!
    end
  end
end
