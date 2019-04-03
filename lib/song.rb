class Song
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count = {}
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
    
    #count = 0
    #@@genres.each do |genre|
    #  @@genre_count << genre => (count =+ 1) unless @@genre_count.has_key?(genre) then @@genre_count[genre] += 1
    #  end
    #end
  #end     
      
    @@genre_count[@@genres.group_by{ |v| v }.flat_map{ |k, v| [k, v.size] }]
  end
end