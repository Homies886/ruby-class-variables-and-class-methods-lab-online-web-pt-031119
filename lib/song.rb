class Song
  
  attr_accessor :name :artist :genre
  
  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count = []
  @@artist_count = []
  
  def initialize
    @@count += 1
    @@genres << :genre
    @@artists << :artist
  end
  
  
  
end