class ApplicationController < ActionController::Base

  before_action :authenticate_user!, except: [:top, ]
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    user_path(current_user.id) #userのshowページ
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email]) #sign_upと[:email]を引数に渡しているのでサインアップ時にemailを許可
  end

end
