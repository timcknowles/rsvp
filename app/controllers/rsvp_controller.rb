class RsvpsController < ApplicationController
  def show
  end
  
  def update
    @family.update_attributes(params[:family])
  end
end