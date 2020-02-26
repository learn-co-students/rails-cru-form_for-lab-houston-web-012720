# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Artist.destroy_all
Genre.destroy_all
Song.destroy_all


a1 = Artist.create(name: "Doc H", bio: "not a real doctor")
a2 = Artist.create(name: "Tool", bio: "some real tool music")
a3 = Artist.create(name: "My neighbor", bio: "not music")
a4 = Artist.create(name: "Wolfgang Amadeus Mozart", bio: "real classy")

g1 = Genre.create(name: "Metal")
g2 = Genre.create(name: "Industrial")
g3 = Genre.create(name: "Classical")

Song.create(name: "bonesaw", artist_id: a1.id, genre_id: g2.id)
Song.create(name: "Reflection", artist_id: a2.id, genre_id: g1.id)
Song.create(name: "Lateralus", artist_id: a2.id, genre_id: g1.id)
Song.create(name: "The Magic Flute", artist_id: a4.id, genre_id: g3.id)
Song.create(name: "Eine Kleine Nachtmusik", artist_id: a4.id, genre_id: g3.id)
Song.create(name: "toejam", artist_id: a3.id, genre_id: g2.id)
Song.create(name: "garbage violin ditty", artist_id: a3.id, genre_id: g3.id)

