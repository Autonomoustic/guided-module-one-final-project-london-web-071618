
class Greet


  def greet
    puts 'Welcome to NameOfApp, Where music lives through you'
  end

  def gets_user_input
    puts "You can find your favourite Albums"
    puts "just search for an Album"
    album = gets.chomp
  end

  def find_album(album)
    Artist.find_by(name: album)
  end

  def find_artist(album)
    album.artists
  end

  def run
    greet
    input = gets_user_input
    album = find_album(input)
    find_artist(album)
  end
end
