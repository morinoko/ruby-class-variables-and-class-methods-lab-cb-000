class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre 
    @@count += 1
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    @@genres.uniq
    
    # Long way:
    # unique_genres = []
    # @@genres.each{ |genre| unique_genres << genre unless unique_genres.include?(genre) }
    # unique_genres
  end
  
  def self.genre_count
    genre_histogram = {}
    @@genres.each do |genre|
      genre_histogram.keys.include?(genre) ? genre_histogram[genre] += 1 : genre_histogram[genre] = 1
    end
    genre_histogram
  end
  
  def self.artists
    @@artists.uniq
    
    # Long way:
    # unique_artists = []
    # @@artists.each{ |artist| unique_artists << artist unless unique_artists.include?(artist) }
    # unique_artists
  end
  
  def self.artist_count
    artist_histogram = {}
    @@artists.each do |artist|
      artist_histogram.keys.include?(artist) ? artist_histogram[artist] += 1 : artist_histogram[artist] = 1
    end
    artist_histogram
  end
  
end