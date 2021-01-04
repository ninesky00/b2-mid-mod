require 'rails_helper'

RSpec.describe "studio index" do 
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
  end

  it "should see a list of all movie studios" do 
    visit studios_path
    
    expect(page).to have_content(@paramount.name)
    expect(page).to have_content(@paramount.location)
    expect(page).to have_content(@universal.name)
    expect(page).to have_content(@universal.location)
    expect(page).to have_content(@disney.name)
    expect(page).to have_content(@disney.location)
  end

  it "should see a list of all the movies by the studio" do 
    visit studios_path

    within("#studio-#{@paramount.id}") do 
      expect(page).to have_content(@titanic.title)
      expect(page).to have_content(@forrest.title)
    end

    within("#studio-#{@universal.id}") do 
      expect(page).to have_content(@jurassic.title)
      expect(page).to have_content(@jaws.title)
    end

    within("#studio-#{@disney.id}") do 
      expect(page).to have_content(@incredibles.title)
      expect(page).to have_content(@lion_king.title)
    end
  end
end