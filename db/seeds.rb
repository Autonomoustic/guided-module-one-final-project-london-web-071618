
require 'faker'



for i in 1..6 do # a loop that generates 6 genres
  Genre.create(name: Faker::Music.genre) # creates instances of class and used data from 'faker' gem
  puts "#{i}th Genre added" # puts out a statement after each iteration of th loop.
end

#artists
for i in 1..50 do
  #create the artist variable
  artist = Artist.create(name: Faker::Music.band)
  puts "#{artist.id}th Artist added"

  #create a loop for creating albums
  for j in 1..(rand(10) + 1) do
    album = Album.create(name: Faker::Music.album)
    puts "#{album.id}th Album added"
    album.artist_id = artist.id
    album.genre_id = Genre.all[rand(Genre.all.length - 1)].id
    album.save
  end
end
