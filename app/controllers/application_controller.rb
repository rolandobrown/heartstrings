class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  helper_method :status_for

  helper_method :set_user_time_zone, :set_session_tz_offset_for_user

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

  def set_session_tz_offset_for_user
    Warden::Manager.after_authentication do |user, auth, opts|
      if (params[:user])
        user.session_tz_offset = params[:user][:session_tz_offset]
        user.save
      end
    end
  end

  def set_user_time_zone
    if (user_signed_in?)
      if(user_session[:time_zone])
        Time.zone = user_session[:time_zone]
      else
        user_session[:time_zone] =
            ActiveSupport::TimeZone.[](current_user.session_tz_offset)
        Time.zone = user_session[:time_zone]
      end
    else
      Time.zone = config.time_zone
    end
  end

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :name, :email, :password, :password_confirmation, :time_zone) }
      devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:username, :name, :email, :password, :password_confirmation, :time_zone) }
      # devise_parameter_sanitizer.for(:sign_up) << :username
      # devise_parameter_sanitizer.for(:sign_up) << :name
      # devise_parameter_sanitizer.for(:sign_up) << :email
      # devise_parameter_sanitizer.for(:sign_up) << :password
      # devise_parameter_sanitizer.for(:sign_up) << :password_confirmation
      # devise_parameter_sanitizer.for(:sign_up) << :time_zone
    end

    before_filter :set_time_zone

    private

    def set_time_zone
      if current_user
        Time.zone = current_user.time_zone if current_user.time_zone
      end
    end
end
