class Artist
  attr_accessor :name

  @@all = []


  def self.all
    @@all 
  end

  def self.find_or_create_by_name(artist_name)
    if @@all.each {|x| x if x.artist.name = artist_name} == nil
      Artist.new(artist_name)
    else
      @@all.each {|x| x if x.artist.name = artist_name}
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

  def songs 
    @@songs 
  end


end
