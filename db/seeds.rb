# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'faker'

puts 'Destroying all music!!!'
Artist.destroy_all
Genre.destroy_all
Song.destroy_all

puts "Discovering artists!!!"
20.times do
   Artist.create(name: Faker::Music.band, bio: "Bio goes here!")
end

puts "Inventing genres!!!"
10.times do
   Genre.create(name: Faker::Music.unique.genre)
end

puts "Writing songs!!!"
30.times do
   Song.create(name: Faker::Music::UmphreysMcgee.song, artist_id: Artist.all.sample.id, genre_id: Genre.all.sample.id)
end


