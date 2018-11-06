class Artist
  attr_accessor :name, :songs

  @@all = []


  def self.all
    @@all
  end

  def self.find_or_create_by_name(artist_name)
    if @@all.each {|x| x if x.name = artist_name} == nil || false
      Artist.new(artist_name)
    else
      @@all.each {|x| x if x.name = artist_name}
    end
  end

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def print_songs
    @songs.each do |x|
      puts x
    end
  end



end
