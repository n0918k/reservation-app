class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:store_name,:family_name, :first_name, :family_name_kana, :first_name_kana, :number, :age])
  end
end
