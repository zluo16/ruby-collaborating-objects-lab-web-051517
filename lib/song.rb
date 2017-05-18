require "pry"

class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    song = self.new(filename.split(" - ")[1].split(".")[0])
    song.artist = Artist.new(filename.split(" - ")[0])
    song.artist.songs << filename.split(" - ")[1]
    song
  end

end
