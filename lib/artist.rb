require 'pry'

class Artist

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
  end

  def songs
    @@all
  end

  def add_song(song)
    @@all << song
    song.artist = self
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    song.artist = self
    @@all << song
  end

  def self.song_count
    @@all.size
  end

end
