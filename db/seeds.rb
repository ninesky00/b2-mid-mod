# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Movie.destroy_all
Studio.destroy_all
Actor.destroy_all

paramount = Studio.create!(name: "Paramount Pictures", location: "Hollywood")
universal = Studio.create!(name: "Universal Pictures", location: "Universal City")
disney = Studio.create!(name: "Walt Disney Pictures", location: "Burbank")

titanic = paramount.movies.create!(title: "Titanic", creation_year: "1997-01-01", genre: "romance")
forrest = paramount.movies.create!(title: "Forrest Gump", creation_year: "1994-01-01", genre: "romantic comedy")

jurassic = universal.movies.create!(title: "Jurassic Park", creation_year: "1993-01-01", genre: "sifi")
jaws = universal.movies.create!(title: "Jaws", creation_year: "1975-01-01", genre: "thriller")

incredibles = disney.movies.create!(title: "Incredibles 2", creation_year: "2018-01-01", genre: "animation")
lion_king = disney.movies.create!(title: "The Lion King", creation_year: "2019-01-01", genre: "musical drama")

dicaprio = Actor.create!(name: "Leonardo DiCaprio", age: 46, movie_id: titanic)
winslet = Actor.create!(name: "Kate Winslet", age: 46, movie_id: titanic)
zane = Actor.create!(name: "Billy Zane", age: 55, movie_id: titanic)
hanks = Actor.create!(name: "Tom Hanks", age: 64, movie_id: forrest)
