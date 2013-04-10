class SessionsController < ApplicationController
 def new
 end

 def create
  family = Family.find_by_login_code(params[:login_code])
  if family && family.authenticate(params[:password])
    session[:family_id] = family.id
    redirect_to guests_path, notice: "Logged in!"
  else
    flash.now.alert = "login code or password is invalid."
    render "new"
  end
end

def destroy
  session[:family_id] = nil
  redirect_to root_url, notice: "Logged out!"
  end
end