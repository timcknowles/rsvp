class Admins::GuestsController < AdminsController

  def index
    @guest = Guest.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @guests }
    end
  end
end