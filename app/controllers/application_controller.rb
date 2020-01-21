class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def after_sign_in_path_for(resource)
    user_root_path
  end

  def user_root_path
    root_path
  end

  def after_sign_out_path_for(resource)
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:user_name, :password, :password_confirmation])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:user_name, :password, :remember_me])
  end
end
