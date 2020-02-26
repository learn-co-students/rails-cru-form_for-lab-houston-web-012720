a1 = Artist.create(name: "DaBaby", bio: "my name is dababy")
a2 = Artist.create(name: "Tiny Tim", bio: "i am tiny time")

g1 = Genre.create(name: "Rap")
g2 = Genre.create(name: "Creepy")

s1 = Song.create(name: "Suge", artist_id: a1.id, genre_id: g1.id)
s2 = Song.create(name: "Tiptoe Throught the Tulips", artist_id: a2.id, genre_id: g2.id)

