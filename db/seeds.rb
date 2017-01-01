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
Our ceremony will be held at St Helen's Bishopsgate followed by an afternoon tea at St Andrew's Undershaft.
  """,
   registry_body: """
Wedding registry with Amaazon and John lewis there will also be a wishing well at the St Andrews
  """,
  venue_directions: """
**BY TUBE**
Wherever in London you are travelling from, St Helen's is served by excellent public transport links. Bank, Aldgate and Liverpool Street are all a short walk from all of our church buildings.

**BY BUS**
There are a number of buses that stop within walking distance of our church buildings. Use the journey planner to plan your visit.

**BY CAR**
As there is limited parking around the city, we recommend you use public transport to visit us.

**TFL Journey Planner**
https://tfl.gov.uk/plan-a-journey/
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




