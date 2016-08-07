class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |user_params|
      user_params.permit({ roles: [] }, :full_name, :email, :username, :password,
        :password_confirmation, :title, :bio, :avatar, :fb_link, :tw_link,
        :li_link, :yt_link)
    end
  end
end
