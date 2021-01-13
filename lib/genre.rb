class Genre
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def songs
      Song.all {|song| song.genre == self}
    end

    def artists
      Song.all.map {|song| song.artist}
    end

    def self.all
        @@all
    end

end 
