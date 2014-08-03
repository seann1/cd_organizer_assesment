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

