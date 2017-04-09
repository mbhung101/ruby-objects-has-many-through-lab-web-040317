require 'pry'

class Genre

  attr_accessor :artist, :songs
  attr_reader :name

  def initialize (name)
    @name = name
    @songs = []
  end

  def add_song (song)
    self.songs << song
  end

  def songs
    @songs
  end

  def artists
    self.songs.collect do |songs|
      songs.artist
    end
  end

end
