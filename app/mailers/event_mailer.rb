class EventMailer < ApplicationMailer
  def notifications(rsvps, photos)
    @rsvps = rsvps
    @photos = photos
    mail to: ENV['EMAIL_TO'], subject: "Notification from Wedding App"
  end
end
