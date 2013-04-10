module ApplicationHelper
  def rsvp_link_text(rsvped)
    rsvped.rsvp? ? 'Sorry no' : 'Yes please'
  end
end