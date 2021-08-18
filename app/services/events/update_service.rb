# frozen_string_literal: true

module Events
  class UpdateService < BaseService
    attr_reader :event, :params

    def initialize(event_id, args)
      @event = Event.find_by(id: event_id)
      @params = args
    end

    def execute
      return if event.blank?

      event.update!(params)
      event.reload
    end
  end
end
