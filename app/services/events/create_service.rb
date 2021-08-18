# frozen_string_literal: true

module Events
  class CreateService < BaseService
    attr_reader :args

    def initialize(args)
      @args = args
    end

    def execute
      Event.create!(args)
    end
  end
end
