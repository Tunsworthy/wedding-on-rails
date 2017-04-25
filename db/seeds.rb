def seed_image(file_name)
  File.open(File.join(Rails.root, "/app/assets/images/seed/#{file_name}"))
end

event = Event.create!({
  date: Date.parse("2017-07-08"),
  location: "Raffles City Convention Center",
  active: true,
  registry: false,
  title: "Tom & Miao Qun",
  partner_one: "Tom",
  partner_two: "Miao Qun",
  venue_name: "Canning Room",
  venue_address_line_one: "Raffles City Convention Center",
  venue_address_city: "Singapore",
  venue_address_state: "Singapore",
  venue_address_zip: "178882",
  venue_address_country: "Singapore",
  venue_body: """
Our reception will being at 7.00pm in the Canning Ballroom in the Swissôtel. We kindly request that all guests arrive prior to 7.00pm for a prompt start.

  """,
   registry_body: """

  """,
  venue_directions: """
**BY MRT**


**BY BUS**


**BY CAR**


  """
})

venue_photos = VenuePhoto.create!([
  { event_id: event.id, file: seed_image("venue_photos/1.jpg") },
  { event_id: event.id, file: seed_image("venue_photos/2.jpg") },
  { event_id: event.id, file: seed_image("venue_photos/3.jpg") },
  { event_id: event.id, file: seed_image("venue_photos/4.jpg") },
  { event_id: event.id, file: seed_image("venue_photos/5.jpg") },
  { event_id: event.id, file: seed_image("venue_photos/6.jpg") },
  { event_id: event.id, file: seed_image("venue_photos/7.jpg") },
  { event_id: event.id, file: seed_image("venue_photos/8.jpg") },
  { event_id: event.id, file: seed_image("venue_photos/9.jpg") },
  { event_id: event.id, file: seed_image("venue_photos/10.jpg") },
  { event_id: event.id, file: seed_image("venue_photos/11.jpg") },
  { event_id: event.id, file: seed_image("venue_photos/12.jpg") },
  { event_id: event.id, file: seed_image("venue_photos/13.jpg") },
  { event_id: event.id, file: seed_image("venue_photos/14.jpg") },
  { event_id: event.id, file: seed_image("venue_photos/15.jpg") },
  { event_id: event.id, file: seed_image("venue_photos/16.jpg") },
  { event_id: event.id, file: seed_image("venue_photos/17.jpg") },
  { event_id: event.id, file: seed_image("venue_photos/18.jpg") },
  { event_id: event.id, file: seed_image("venue_photos/19.jpg") },
])

event.primary_venue_photo = venue_photos.last.id
event.save!
