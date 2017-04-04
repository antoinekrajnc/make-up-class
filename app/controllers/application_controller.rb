class ApplicationController < ActionController::Base
  include Databasedotcom::Rails::Controller
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?


  class ApplicationController < ActionController::API
    include CanCan::ControllerAdditions
  end

  rescue_from CanCan::AccessDenied do |exception|
    flash[:notice] = "Access denied!"
    flash.keep(:notice)
    redirect_to root_url
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:user_cohort])
    devise_parameter_sanitizer.permit(:account_update, keys: [:user_cohort])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:user_name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:user_name])
  end

end
