class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

 private

 def current_user
  @current_user ||= Customer.find(session[:user_id]) if session[:user_id]
 end
 helper_method :current_user

 def authorize
  redirect_to root_path, alert: "Not authorized" if current_user.nil?
 end

 def logged_in?
  if !current_user
  	redirect_to root_path
  end
  end
 helper_method :logged_in?

end
