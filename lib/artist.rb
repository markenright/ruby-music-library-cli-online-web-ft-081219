class Artist

    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @songs = []
    end

    def self.all
        @@all
    end

    def self.destroy_all
        @@all = []
    end

    def save
        @@all << self
    end

    def self.create(name)
        song = self.new(name)
        song.save
        song
    end

    def songs
        @songs
    end

    def add_song(song)  #accepts a song object
        if song.artist != self
            song.artist = self
            @songs << song
            
            
        end
       # if !@songs.include?(song)
             
       
    end


end