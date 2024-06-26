class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery

  before_filter :update_sanitized_params, if: :devise_controller?

  #attr_accessible :email, :password, :password_confirmation, :remember_me, :username, :confirmed_at

  def update_sanitized_params
    devise_parameter_sanitizer.for(:sign_in) {|u| u.permit( :email, :password, :remember_me )}
    devise_parameter_sanitizer.for(:sign_up) {|u| u.permit( :email, :password, :password_confirmation )}
    devise_parameter_sanitizer.for(:account_update) {|u| u.permit( :email, :password, :password_confirmation, :current_password )}
  end

  def company_params
    params.require(:company).permit!
  end

  before_filter do
    resource = controller_name.singularize.to_sym
    method = "#{resource}_params"
    params[resource] &&= send(method) if respond_to?(method, true)
  end

end
