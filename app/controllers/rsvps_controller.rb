class RsvpsController < ApplicationController
  def show
  end

    
  def update
    current_family.update_attributes(params[:family])
    redirect_to rsvp_path
  end
end
