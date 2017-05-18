require "pry"

class MP3Importer

  attr_accessor :path, :artist

  def initialize(path)
    @path = path
  end

  def files
    files = Dir["#{@path}**/*.mp3"]
    files.collect{|file| file.split("/")[file.split("/").length-1]}
  end

  def import

  end
end
