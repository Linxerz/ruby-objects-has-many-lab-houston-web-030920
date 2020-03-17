class Artist
    @@all = []
    attr_accessor :name
    def initialize (name)
        @name = name
        self.class.all << self
    end

    def songs
        arr = []
        Song.all.each do |song|
            if song.artist == self
                arr << song
            end
        end
        arr
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(song_name)
        song_name = Song.new(song_name)
        song_name.artist = self
    end

    def Artist.all
        @@all
    end

    def Artist.song_count
        total = 0
        self.all.each do |artist|
            total += artist.songs.length
        end
        total
    end

end