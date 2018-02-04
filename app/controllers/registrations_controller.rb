class RegistrationsController < Devise::RegistrationsController

  before_filter :configure_permitted_parameters

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:email, :password, :password_confirmation, :terms)
    end 
  end

  private

  def after_inactive_sign_up_path_for(resource)
    new_user_session_path
  end
end