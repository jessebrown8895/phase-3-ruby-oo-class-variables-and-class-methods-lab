require 'pry' 
class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres  = []
    self
    def initialize(name, artist, genre)
        self.name = name
        self.artist = artist
        self.genre = genre
        @@count += 1 
        @@artists << artist
        @@genres << genre
        
    end
    def self.count
       @@count
    end
    def self.artists
        @@artists.uniq
    end
    def self.genres
        @@genres.uniq
    end
    def self.genre_count
            music_genres_by_count = {}
        @@genres.each do |key|
               
           if !music_genres_by_count[key]
                
                music_genres_by_count[key] = 1
           else
                music_genres_by_count[key] += 1
            end
        end
        music_genres_by_count
    end
    def self.artist_count 
        music_by_artist_count = {}
        @@artists.each do |key|
               
           if !music_by_artist_count[key] 
                
                music_by_artist_count[key] = 1
           else
                music_by_artist_count[key] += 1
            end
        end
        music_by_artist_count
    end
end
