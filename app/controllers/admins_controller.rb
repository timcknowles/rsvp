class AdminsController < ApplicationController

 before_filter :check_admin

  protected

    def check_admin
      unless admin_logged_in? 
      flash.now.alert = "You must have admin rights to access this page"

      redirect_to admins_login_path
      
      end
    end

end



