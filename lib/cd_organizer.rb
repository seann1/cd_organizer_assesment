class Cd_organizer

  @@all_artists = []

  def initialize
  end

  def Cd_organizer.clear
    @@all_artists =[]
  end

  def Cd_organizer.add_cd(artist, album_name)
    artist = Artist.new(artist)
    album = Album.new(album_name)
    artist.albums << album
    @@all_artists << artist
  end



  def Cd_organizer.all
    @@all_artists
  end

end
