require 'pry'

class Artist

  attr_accessor :songs
  attr_reader :name

  def initialize (name)
    @name = name
    @songs = []
    @genres = []
  end

  def add_song (song)
    self.songs << song
    song.artist = self
  end

  def genres
    self.songs.collect do |songs|
      songs.genre
    end
  end


end
