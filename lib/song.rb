class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres = []
    @@artists = []
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @@artists << artist
        @genre = genre
        @@genres << genre
        @@count += 1
    end 
    def self.count
        @@count
    end  
    def self.genres
        @@genres.uniq
    end  
    def self.artists
        @@artists.uniq
    end 
    #["pop", "rap", "pop", "ballad", "ballad"]
    def self.genre_count
        result = Hash.new(0)
        @@genres.each {|genre| result[genre] +=1 }
        result
        #@@genres.tally
    end   
    def self.artist_count
        result = Hash.new(0)
        @@artists.each {|artist| result[artist] +=1 }
        result
    end
end    

# ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
# in_da_club = Song.new("In Da Clubs", "Eminem", "rap")
# puts Song.count
