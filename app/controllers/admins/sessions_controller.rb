class Admins::SessionsController < AdminsController
 def new
 end

 def index
 end

 def show
 end

 def create
  admin = Admin.find_by_email(params[:email])
  if admin && admin.authenticate(params[:password])
    session[:admin_id] = admin.id
    redirect_to admins_guests_path, notice: "Logged in!"
  else
    flash.now.alert = "email or password is invalid."
    render "new"
  end
end

def destroy
  session[:admin_id] = nil
  redirect_to root_url, notice: "Logged out!"
  end
end