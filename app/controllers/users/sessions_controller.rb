class Users::SessionsController < Devise::SessionsController
# before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end

  def after_sign_in_path_for(user)
    sign_in_url = new_user_session_url
    if request.referer == sign_in_url
      # super
      case user.role
      when User::ADMIN
        users_dashboard_admin_dashboard_path
      when User::DEVELOPER
        todos_path
      else
        root_path
      end
    else
      stored_location_for(user) || request.referer || root_path
    end
  end
end
