class Users::SessionsController < Devise::SessionsController
# before_filter :configure_sign_in_params, only: [:create]
# before_filter :configure_account_update_params, only: [:update]

#   GET /resource/sign_in
  # def new
  #
  # end
#
  # POST /resource/sign_in
  # def create
  #   if params[:redirect_to].present?
  #     store_location_for(resource, params[:redirect_to])
  #   end
  # end
#
#   DELETE /resource/sign_out
#   def destroy
#     super

#   end
#
#   protected
#
#   If you have extra params to permit, append them to the sanitizer.
#   def configure_sign_in_params
#     devise_parameter_sanitizer.for(:sign_in) << :attribute
#   end
end
