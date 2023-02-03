# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#

puts "Clearing database..."

Trip.destroy_all
Shredder.destroy_all
Gear.destroy_all
Resort.destroy_all
Accommodation.destroy_all
Award.destroy_all
Attend.destroy_all

puts "Seeding database..."

t1 = Trip.create(name: "Big Sky", year: 2019, location: "Big Sky, Montana", hashtag: "#BS2019", slogan: "SHRED IT!!1", song: "Meat's In The Freezer by David Walburn", bracket: "Bracket N/A")
t2 = Trip.create(name: "Jackson Hole", year: 2020, location: "Teton Village, Wyoming", hashtag: "#JH2020", slogan: "SHRED IT!!1", song: "Ski Baby Ski by Ava & The Avalanches", bracket: "Bracket TBD")

s1 = Shredder.create(name: "Daniel Boley", nickname:"Shredder Weezer", dob: "1994-03-11", kind: "Skier", pic: "TBD")
s2 = Shredder.create(name: "Brendan Dempsey", nickname:"Shredder Branson", dob: "1994-07-07", kind: "Skier", pic: "TBD")

g1 = Gear.create(year: 2020, brand: "Nordica", model: "Enforcer", specs: "100, 169", pic: "TBD", shredder_id: 1)
g2 = Gear.create(year: 2020, brand: "Atomic", model: "Vantage", specs: "97C, 172", pic: "TBD", shredder_id: 2)

r1 = Resort.create(name: "Big Sky Resort", map: "Map TBD", top_ele: 11116, base_ele: 6800, vertical: 4350, area: 5800, runs: 150, pic: "TBD", trip_id: 1)
r2 = Resort.create(name: "Jackson Hole Mountain Resort", map: "Map TBD", top_ele: 10450, base_ele: 6311, vertical: 4139, area: 5500, runs: 131, pic: "TBD", trip_id: 2)

a1 = Accommodation.create(name: "Saddle Ridge Retreat", description: "bs acc descript", address: "123 Main St", pic: "Pic TBD", link: "Link TBD", trip_id: 1)
a2 = Accommodation.create(name: "Moose Creek Mansion", description: "jh acc descript", address: "321 Main St", pic: "Pic TBD", link: "Link TBD", trip_id: 2)

aw1 = Award.create(name: "Apres Ski", description: "apres ski award desc", trip_id: 1, shredder_id: 2)
aw2 = Award.create(name: "Fits Award", description: "fits award desc", trip_id: 2, shredder_id: 1)

st1 = Attend.create(trip_id: 1, shredder_id: 1, present: "True")
st2 = Attend.create(trip_id: 2, shredder_id: 1, present: "True")
st3 = Attend.create(trip_id: 1, shredder_id: 2, present: "True")
st4 = Attend.create(trip_id: 2, shredder_id: 2, present: "True")

puts "Seeding complete"