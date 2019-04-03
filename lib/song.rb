class Song
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count(0) = {}
  @@artist_count = {}
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end
  
  def self.count
    @@count
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.genre_count
    count = 0
    @@genres.each do |genre|
      @@genre_count[genre] = count += 1
      @@genre_count
    end 
  end
  
  def self.artist_count
    count = 0
    @@artists.each do |artist|
      @@artist_count[artist] = count += 1
    end 
    @@artist_count
  end
  
  
end