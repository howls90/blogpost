class ApplicationController < ActionController::Base
  before_action :set_categories	
  protect_from_forgery with: :exception
  before_action :configure_devise_params, if: :devise_controller? 

  def configure_devise_params
  	devise_parameter_sanitizer.permit(:sign_up) do |user|
  		user.permit(:name,:email,:password,:password_confirmation,:avatar,:github,:google,:facebook,:twitter,:bio,:linkedin)
  	end
  end

  def set_categories
      @categories = Category.all
    end

end
