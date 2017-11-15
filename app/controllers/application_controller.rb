class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :authenticate_user!
  protect_from_forgery with: :exception
  # deviseのストロングパラメータに追加の記述
  before_action :configure_permitted_parameters, if: :devise_controller?
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :avatar])
  end
  # サインアウトするとログイン画面に飛ぶ記述
  def after_sign_out_path_for(resource)
    '/users/sign_in'
  end
end
