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

