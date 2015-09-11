class ApplicationController < ActionController::Base

  helper_method :status_for

    # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!

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

end
