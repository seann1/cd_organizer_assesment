require './lib/cd_organizer'
require './lib/artist'
require './lib/album'


def main_menu
  loop do
    puts "
  ║░█░█░║░█░█░█░║░█░█░║
  ║░█░█░║░█░█░█░║░█░█░║
  ║░║░║░║░║░║░║░║░║░║░║
  ╚═╩═╩═╩═╩═╩═╩═╩═╩═╩═╝
      CD ORGANIZER

    '1' view all artists
    ______________________
    '2' search for artist
    ______________________
    '3' add cd
    ______________________
    '4' add album for artist
    ______________________
    '5' exit
    ______________________"
    main_choice = gets.chomp

    if main_choice == '1'
      view_artists
    elsif main_choice == '2'
      search_artists
    elsif main_choice == '3'
      add_cd
    elsif main_choice == '4'
      add_album
    elsif main_choice == '5'
      puts "Goodbye"
      break
    else
      puts "That choice was invalid"
    end
  end
end

  def view_artists
    Cd_organizer.display_artists
  end

  def add_cd
    puts "Enter artist name"
    user_artist = gets.chomp
    puts "Enter an album"
    user_album = gets.chomp
    Cd_organizer.add_cd(user_artist, user_album)
  end

  def search_artists
    puts "What artist would you like to search for?"
    user_choice = gets.chomp
    puts "\n"
    Cd_organizer.search_artist(user_choice)
  end

  main_menu
