class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_filter :set_user_time_zone
  helper_method :status_for

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # before_action :authenticate_user!

  def after_sign_in_path_for(resource)
    sign_up_url = new_user_registration_url
    sign_in_url = new_user_session_url
   if (request.referer == sign_in_url) || (request.referer == sign_up_url)
     new_message_path
   else
     request.referer || stored_location_for(resource) || root_path
   end
  end

  def status_for(message)
    if message.published_at?
      if message.published_at > Time.zone.now
        "Schedule"
      else
        "Send Now"
      end
    else
      "Draft"
    end
  end

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :name, :email, :password, :password_confirmation, :time_zone) }
      # devise_parameter_sanitizer.for(:sign_up) << :username
      # devise_parameter_sanitizer.for(:sign_up) << :name
      # devise_parameter_sanitizer.for(:sign_up) << :email
      # devise_parameter_sanitizer.for(:sign_up) << :password
      # devise_parameter_sanitizer.for(:sign_up) << :password_confirmation
      # devise_parameter_sanitizer.for(:sign_up) << :time_zone
    end

    def set_user_time_zone
      Time.zone = current_user.time_zone if user_signed_in?
    end
end
