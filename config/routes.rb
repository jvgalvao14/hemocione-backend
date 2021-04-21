# frozen_string_literal: true

Rails.application.routes.draw do
  scope :api, defaults: { format: :json } do
    Healthcheck.routes(self)
    devise_for :users
  end
end
