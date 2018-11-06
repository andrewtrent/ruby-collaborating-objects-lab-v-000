require 'pry'
class Artist
  attr_accessor :name, :songs

  @@all = []


  def self.all
    @@all
  end

  def self.find_by_name(artist_name)
    self.all.each {|x| x if x.name = artist_name}
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
      puts x.name
    end
  end

  def self.find_or_create_by_name(artist_name)

    if self.find_by_name(artist_name) != nil
      self.find_by_name(artist_name)
    else
      self.new(artist_name)

    end

  end
binding.pry

end
