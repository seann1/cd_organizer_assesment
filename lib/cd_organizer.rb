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

  def Cd_organizer.display_artists
    @@all_artists.each_with_index do |item, index|
      puts item.artist
    end
  end

  def Cd_organizer.all
    @@all_artists
  end

  def Cd_organizer.search_artist(user_artist)
    @@all_artists.each_with_index do |item, index|
      if item.artist == user_artist
        puts "Your entered: #{item.artist}"
        puts "Here are the albums for this artist"
        item.albums.each_with_index do |item, index|
          puts item.name
        end
      end
    end
    main_menu
  end
end
