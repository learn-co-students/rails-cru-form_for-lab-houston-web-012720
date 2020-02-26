# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Genre.destroy_all
Artist.destroy_all
Song.destroy_all


10.times do
  Genre.create(name: Faker::Music.genre)
end

30.times do
  bio = []
  10.times do
    bio << Faker::Quote.most_interesting_man_in_the_world
  end
  Artist.create(name: Faker::Name.name, bio: bio.join(". "))
end

300.times do
  Song.create(name: Faker::Music::UmphreysMcgee.song, artist_id: Artist.all.sample.id, genre_id: Genre.all.sample.id)
end