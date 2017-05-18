class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    if all_tracker(name)
      save
    end
  end


  def add_song(song)
    songs << song
  end

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    if @@all.find{|artist| artist.name == name}
      @@all.find{|artist| artist.name == name}
    else
      artist = Artist.new(name)
    end
  end

  def print_songs
    songs.each{|song| puts song.name}
  end

  private

  def all_tracker(name)
    @@all.each do |artist|
      if artist.name == name
        return false
      end
    end
    true
  end

end
