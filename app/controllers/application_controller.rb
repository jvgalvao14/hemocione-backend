# frozen_string_literal: true

class ApplicationController < ActionController::API
  include ActionController::Helpers
  include ActionController::MimeResponds
  include CanCan::ControllerAdditions

  before_action :configure_permitted_parameters, if: :devise_controller?

  respond_to :json

  rescue_from CanCan::AccessDenied do |_|
    head :forbidden
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[document_id document_type email name image blood_type birthdate
                                                         gender phone])
  end
end
