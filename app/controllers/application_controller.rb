class ApplicationController < ActionController::Base
  protect_from_forgery

  private
  def current_user
    @current_user ||= Family.find(session[:family_id]) if session[:family_id]
  end
  helper_method :current_user
  def user_logged_in?
      !!current_user
    end
    helper_method :user_logged_in?
end
