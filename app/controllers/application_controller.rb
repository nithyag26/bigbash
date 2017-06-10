class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_customer

  helper_method :current_empcustomer

  helper_method :current_admin
 

  private

  def current_customer
  @current_customer ||= Customer.find(session[:customer_id]) if session[:customer_id]
  end

private

def current_empcustomer
  @current_emp ||= Employee.find(session[:emp_id]) if session[:emp_id]
end

private

def current_admin
  @current_admin ||= Admin.find(session[:admin_id]) if session[:admin_id]
end

end
