class Song

    attr_accessor :name, :artist
    @@all = []

   # def initialize(*parameters_array)  #passed an optional artist object
         
    #    @name = parameters_array[0]

     #   if parameters_array[1]
         
      #      artist = parameters_array[1]
            
       # end
       
    #end

    def initialize(name, artist_obj = nil)

        @name = name
        
        if artist_obj
            artist = artist_obj
        end

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

   def artist=(artist)  #pass in artist object
        @artist = artist
        artist.add_song(self) 
    end


end