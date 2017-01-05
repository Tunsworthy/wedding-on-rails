class EventsController < ApplicationController

  before_filter :set_event, only: [:show, :update]
  before_filter :set_groups, only: [:show]

  def show
    @group = Group.new
    @primary_venue_photo = VenuePhoto.find(@event.primary_venue_photo).file_url unless @event.primary_venue_photo.nil?
    @venue_photos = VenuePhoto.where.not(id: @event.primary_venue_photo) || []
    @venue_ranphoto = VenuePhoto.where(id: VenuePhoto.pluck(:id).sample(6)).where.not(id: @event.primary_venue_photo)

  end

  def update
    @event.update_attributes(event_params)
    redirect_to :back
  end

  private

  def set_event
    @event = Event.find params[:id] || default_event
  end

  def event_params
    params.require(:event).permit(:date, :location, :active,:registry,:registry_body, :title, :primary_venue_photo, :partner_one,:partner_two,:venue_name,:venue_address_line_one,:venue_address_city,:venue_address_state,:venue_body,:venue_directions)
  end

  def set_groups
    @groups = @event.groups
  end
end
