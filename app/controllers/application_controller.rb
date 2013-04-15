class ApplicationController < ActionController::Base
  protect_from_forgery


  private

    def current_family
      @current_family ||= Family.find(session[:family_id]) if session[:family_id]
    end
    helper_method :current_family
  
    def family_logged_in?
      !!current_family
    end
    helper_method :family_logged_in?
    

    def current_admin
      @current_admin ||= Admin.find(session[:admin_id]) if session[:admin_id]
    end
    helper_method :current_admin
    

    def admin_logged_in?
      !!current_admin
    end
    helper_method :admin_logged_in?

    def full_invite?
      @current_family.guest.invite_type
    end

    helper_method :full_invite?
    
end