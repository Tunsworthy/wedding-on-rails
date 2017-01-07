def seed_image(file_name)
  File.open(File.join(Rails.root, "/app/assets/images/seed/#{file_name}"))
end

event = Event.create!({
  date: Date.parse("2017-07-01"),
  location: "St Helen's Bishopsgate",
  active: true,
  registry: true,
  title: "Tom & Miao Qun",
  partner_one: "Tom",
  partner_two: "Miao Qun",
  venue_name: "St Helen's",
  venue_address_line_one: "Great St Helen's",
  venue_address_city: "London",
  venue_address_state: "London",
  venue_address_zip: "EC3A 6AT",
  venue_address_country: "United Kingdom",
  venue_body: """
Our ceremony will begin at 2.30pm at St Helen’s Bishopsgate. We kindly request that all guests are seated by 2.20pm. After the ceremony we would love for you to join us for a celebratory afternoon tea at St Andrew’s Undershaft (approx. 2 minutes’ walk from St Helen’s).

  """,
   registry_body: """
Please use the links below to access our wedding registries with Amazon and John Lewis. There will also be a wishing well by the doors at St Helen’s.

**<a href="https://www.amazon.com/wedding/share/TDUMQT-Wedding">Amazon</a>**

  """,
  venue_directions: """
**BY TUBE**
St Helen’s is served by excellent public transport links. Bank, Aldgate and Liverpool Street tube stations are all a short walk from St Helen’s.

**BY BUS**
There are a number of buses (including 8, 11, 21, 43, 135, 141 and 243) that stop within walking distance of St Helen’s. Use the journey planner below to plan your journey.

**BY CAR**
As there is limited parking around the city/ near St Helen’s, we recommend you use public transport to make your journey 

**<a href="https://tfl.gov.uk/plan-a-journey/">TFL Journey Planner</a>**

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
])

event.primary_venue_photo = venue_photos.last.id
event.save!

butlers = Group.create!({
  event_id: event.id
})

owens = Group.create!({
  event_id: event.id
})

ian = Guest.create!({
  name: "Ian Butler",
  rsvp: true,
  invited_to_ceremony: true,
  invited_to_evening: true,
  group_id: butlers.id,
  event_id: event.id
})

mary = Guest.create!({
  name: "Mary Butler",
  rsvp: true,
  invited_to_ceremony: true,
  invited_to_evening: true,
  group_id: butlers.id,
  event_id: event.id
})

bryan = Guest.create!({
  name: "Bryan Owen",
  rsvp: true,
  invited_to_ceremony: true,
  invited_to_evening: true,
  group_id: owens.id,
  event_id: event.id
})

joyce = Guest.create!({
  name: "Joyce Owen",
  rsvp: true,
  invited_to_ceremony: true,
  invited_to_evening: true,
  group_id: owens.id,
  event_id: event.id
})

leon = Guest.create!({
  name: "Leon Butler",
  invited_to_ceremony: true,
  invited_to_evening: true,
  event_id: event.id
})

leons_guest = Guest.create!({
  rsvp: false,
  invited_to_ceremony: true,
  invited_to_evening: true,
  group_id: leon.group.id,
  event_id: event.id
})

debug = Group.create!({
  event_id: event.id
})

no_rsvp = Guest.create!({
  name: "no_rsvp",
  invited_to_ceremony: true,
  invited_to_evening: true,
  group_id: debug.id,
  event_id: event.id
})

rsvp_false = Guest.create!({
  name: "rsvp_false",
  invited_to_ceremony: true,
  invited_to_evening: true,
  event_id: event.id,
  group_id: debug.id,
  rsvp: false
})

rsvp_true = Guest.create!({
  name: "rsvp_true",
  invited_to_ceremony: true,
  invited_to_evening: true,
  event_id: event.id,
  group_id: debug.id,
  rsvp: true
})

guest_no_rsvp = Guest.create!({
  invited_to_ceremony: true,
  invited_to_evening: true,
  group_id: debug.id,
  event_id: event.id
})

guest_rsvp_false = Guest.create!({
  invited_to_ceremony: true,
  invited_to_evening: true,
  event_id: event.id,
  group_id: debug.id,
  rsvp: false
})

guest_rsvp_true = Guest.create!({
  invited_to_ceremony: true,
  invited_to_evening: true,
  event_id: event.id,
  group_id: debug.id,
  rsvp: true
})




