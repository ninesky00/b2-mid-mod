require 'rails_helper'

RSpec.describe "movie show page" do 
  before(:each) do 
    @paramount = Studio.create!(name: "Paramount Pictures", location: "Hollywood")
    @universal = Studio.create!(name: "Universal Pictures", location: "Universal City")
    @disney = Studio.create!(name: "Walt Disney Pictures", location: "Burbank")
    @titanic = @paramount.movies.create!(title: "Titanic", creation_year: "1997-01-01", genre: "romance")
    @forrest = @paramount.movies.create!(title: "Forrest Gump", creation_year: "1994-01-01", genre: "romantic comedy")
    @jurassic = @universal.movies.create!(title: "Jurassic Park", creation_year: "1993-01-01", genre: "sifi")
    @jaws = @universal.movies.create!(title: "Jaws", creation_year: "1975-01-01", genre: "thriller")
    @incredibles = @disney.movies.create!(title: "Incredibles 2", creation_year: "2018-01-01", genre: "animation")
    @lion_king = @disney.movies.create!(title: "The Lion King", creation_year: "2019-01-01", genre: "musical drama")
    @dicaprio = Actor.create!(name: "Leonardo DiCaprio", age: 46, movie_id: @titanic)
    @winslet = Actor.create!(name: "Kate Winslet", age: 46, movie_id: @titanic)
    @zane = Actor.create!(name: "Billy Zane", age: 55, movie_id: @titanic)
    @hanks = Actor.create!(name: "Tom Hanks", age: 64, movie_id: @forrest)
  end

  it "should see all of the movies attributes" do 
    visit "/studios/#{@paramount.id}/movies/#{@titanic.id}"

    expect(page).to have_content(@titanic.title)
    expect(page).to have_content(@titanic.creation_year)
    expect(page).to have_content(@titanic.genre)
  end

  
  
  
end