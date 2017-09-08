class Album
  attr_accessor :tracks

  def initialize
    @tracks = []
  end
end

class Song
  def initialize(title)
    @title = title
  end
end

lemonade = Album.new()
lemonade.tracks << Song.new('Formation')
