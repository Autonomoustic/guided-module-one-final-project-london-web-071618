require 'pry'

class Greet


  def greet
    puts 'Welcome to Potify, Where music lives through you.'
  end

  def get_user_input
    puts "Would you like to search by Artist, Album or Genre?"
    puts "or type \"quit\" to leave"
      input = gets.chomp
      if input == "quit"
        exit_program
      else
        user_input(input)
      end
  end

  def get_artist_input
    puts "Which Artist would you like to listen to?"
    search_for = gets.chomp
    artist = Artist.find_by_name(search_for)
    all_artists = Artist.all.map {|artist| puts "#{artist.name}"}
    if artist
      puts "here is what you are looking for"
      puts "Artist - #{artist.name}"
      puts
    elsif search_for == "quit"
      exit_program
    elsif search_for == "All Artists"
      puts "#{all_artists}"
     else
      puts "We couldnt't find that Artist, try searching for another!"
      get_artist_input
    end
  end

  def get_album_input
    puts "Which Album would you like to listen to?"
    search_for = gets.chomp
    album = Album.find_by_name(search_for)
    if album
      puts "here is what you are looking for"
      puts "Album - #{album.name}"
      puts "Artist - #{album.artist.name}"
      puts "Genre - #{album.genre.name}"
      puts
      elsif search_for == "quit"
      exit_program
     else
      puts "We couldnt't find that album, try searching for another!"
      get_album_input
    end
  end

  def get_genre_input
    puts "Which Genre would you like to listen to?"
    search_for = gets.chomp
    genre = Genre.find_by_name(search_for)
    if genre
      puts "here is what you are looking for"
      puts "Genre - #{genre.name}"
      puts
    elsif search_for == "quit"
      exit_program
     else
      puts "We couldnt't find that Genre, try searching for another!"
      get_genre_input
    end
  end

  def user_input(model)
    if model == "quit"
      exit_program
    elsif model == "Album"
      get_album_input
    elsif model == "Artist"
      get_artist_input
    elsif model == "Genre"
      get_genre_input
    end
    get_user_input
  end

  def exit_program
    abort("see you next time")
  end

  def run
    greet
    model = get_user_input
    user_input(model)
  end
end
