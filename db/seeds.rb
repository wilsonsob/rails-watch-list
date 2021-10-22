require 'json'
require 'open-uri'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'cleaning up database...'
Movie.destroy_all
puts 'database is clean!'

url = 'http://tmdb.lewagon.com/movie/top_rated'
data_movie = URI.open(url).read
movies = JSON.parse(data_movie)['results']

movies.each do |movie|
  Movie.create(title: movie['title'],overview: movie['overview'],rating: movie['vote_average'],poster_url:"https://image.tmdb.org/t/p/original#{movie['poster_path']}")

  puts 'movie is created.'
end
puts 'done'
