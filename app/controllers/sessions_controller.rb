class SessionsController < ApplicationController
 def new
 end

 def create
  guest = Guest.find_by_login_code(params[:login_code])
  if guest && guest.authenticate(params[:password])
    session[:guest_id] = guest.id
    redirect_to families_path(@guest_id), notice: "Logged in!"
  else
    flash.now.alert = "login code or password is invalid."
    render "new"
  end
end

def destroy
  session[:guest_id] = nil
  redirect_to root_url, notice: "Logged out!"
  end
end