class ApplicationController < ActionController::Base
  protect_from_forgery

  protected
  
    def current_family
      @current_family ||= Family.find(session[:family_id]) if session[:family_id]
    end
    helper_method :current_family
  
    def family_logged_in?
      !!current_family
    end
    helper_method :family_logged_in?
end
