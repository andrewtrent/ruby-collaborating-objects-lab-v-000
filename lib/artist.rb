class Artist
  attr_accessor :name, :songs

  @@all = []


  def self.all
    @@all
  end

  def self.find_or_create_by_name(artist_name)
ret = (
    if @@all.each {|x| x if x.name = artist_name} == nil || false
      new_art = Artist.new(artist_name)
      new_art
    else
      @@all.each {|x| x if x.name = artist_name}
    end
    )
    puts ret
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



end
