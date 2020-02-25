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

Artist.create(name: "Snoop Dog", bio: "If the ride is more fly, then you must buy.")

Genre.create(name: "Hip-Hop")

Song.create(name: "Drop It Like It's Hot", genre_id: 1, artist_id: 1)
