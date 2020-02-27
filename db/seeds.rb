# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.destroy_all
Song.destroy_all 
Genre.destroy_all

pop_song = ["Look at Us Now Dad", "Map of the Soul: 7", "Changes", "Walls", "Say Nothing", "Treat Myself", "Manic", "I Disagree", "Rare", "Fine Line", "Romance", "LP1", "Reflections", "CHAMPION", "Hollywood's Bleeding", "Care Package"]
pop_artist = ["Banoffee", "BTS", "Justin Bieber", "Louis Tomlinson", "Theory of a Deadman", "Meghan Trainor", "Halsey", "Poppy", "Selena Gomez", "Harry Styles", "Camila Cabello", "Liam Payne", "Hannah Diamond", "Bishop Briggs", "Post Malone", "Drake"] 
coutry_song = ["Half Moon Light", "LP5", "Just Like Moby Dick", "Nightfall", "What You See Is What You Get", "Wildcard", "Play the Hits", "Blood", "White Noise/White Lines", "Sound & Fury", "Desert Dove", "III", "Fires for the Cold", "The Highwomen", "The Highwomen", "While I'm Livin'", "Let It Roll", "Okie"] 
coutry_artist = ["The Lone Bellow", "John Moreland", "Terry Allen & the Panhandle Mystery Band", "Little Big Town", "Luke Combs", "Miranda Lambert", "The Mavericks", "Allison Moorer", "Kelsey Waldon", "Sturgill Simpson", "Michaela Anne", "The Lumineers", "Jonah Tolchin", "Tanya Tucker", "Midland", "Vince Gill"] 

bio = ["The most common and obvious reason is to see what a particular template or font looks like when it is applied to a body of text", " Rather than copying and pasting text from another source, or typing it anew, you can save time by using a built-in macro", " Another reason to want to generate a great deal of text quickly is to get an idea of how a published report or book might look when there are 200 pages of it to bind and handle"] 

pop = Genre.create(name: "pop")
country = Genre.create(name: "country")

for i in 0...pop_song.length
    a = Artist.create(name: pop_artist[i], bio: bio.sample)
    Song.create(name: pop_song[i], artist_id: a.id, genre_id: pop.id)
end

for i in 0...coutry_song.length
    a = Artist.create(name: coutry_artist[i], bio: bio.sample)
    Song.create(name: pop_song[i], artist_id: a.id, genre_id: country.id)
end


