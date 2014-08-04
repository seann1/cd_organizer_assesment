require 'rspec'
require 'cd_organizer'
require 'artist'
require 'album'

describe "Cd_organizer" do
  before  do
    Cd_organizer.clear
  end

  describe "initialize" do
    it "creates an empty array when a new class is created" do
      new_organizer = Cd_organizer.new
      expect(Cd_organizer.all).to eq ([])
    end
  end

  describe "Cd_organizer.add_cd" do
    it "creates a new instance of Artist and Album and pushes artist into all_artists array" do
      Cd_organizer.add_cd("prince", "thriller")
      expect(Cd_organizer.all.length).to eq(1)
    end
    it "pushes album into Artist's albums array" do
      Cd_organizer.add_cd("prince", "thriller")
      expect(Cd_organizer.all[0].albums.length).to eq(1)
    end
  end

  describe "Cd_organizer.display_artists" do
    it "displays all artists in all_artists array" do
      Cd_organizer.add_cd("prince", "thriller")
      expect(Cd_organizer.display_artists.length).to eq(1)
    end
  end

  describe "Artist" do
    describe "initialize" do
      it "is initialized with a name and an empty albums array" do
        new_artist = Artist.new("prince")
        expect(new_artist.albums).to eq ([])
      end
    end
  end

  describe "Album" do
    describe "initialize" do
      it "is initialized with a name" do
        new_album = Album.new("thriller")
        expect(new_album.name).to eq ("thriller")
      end
    end
  end
end

