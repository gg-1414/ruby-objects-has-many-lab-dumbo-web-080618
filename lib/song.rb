class Song

  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all?
    @all
  end

  def artist_name
    # self
    # => #<Song:0x007ffe219e3c08 @name="Survivor", @artist=#<Artist:0x007ffe219e3a00 @name="Drake">>
    # self.artist
    # => #<Artist:0x007ff92abf7f18 @name="Drake">
    self.artist.nil? ? nil : self.artist.name
  end
end
