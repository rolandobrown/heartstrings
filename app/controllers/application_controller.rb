class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  helper_method :status_for

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # before_action :authenticate_user!


  def after_sign_in_path_for(resource)
   sign_in_url = 'http://www.heartstrings.io/users/sign_in'
   sign_up_url = 'http://www.heartstrings.io/users/sign_up'
   if request.referer == sign_in_url || request.referer == sign_up_url
     new_message_path
   else
     stored_location_for(resource) || request.referer || root_path
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
      devise_parameter_sanitizer.for(:sign_up) << :username
      devise_parameter_sanitizer.for(:sign_up) << :name
      devise_parameter_sanitizer.for(:sign_up) << :email
    end
end
