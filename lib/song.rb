class Song

    attr_accessor :name
    attr_accessor :artist
    attr_accessor :genre

    @@count = 0
    @@genres = []
    @@artists=[]

    def initialize(name, artist, genre)
        @@name = name
        @@artist = artist
        @@genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    def name
         @@name
    end

    def artist
         @@artist
    end

    def genre
         @@genre
    end

    def self.count
         @@count
    end

    def song_count
        return @@count
    end

    def self.genre_count
        genre_object = {}
        @@genres.each do |g|
          if genre_object[g]
            genre_object[g] += 1
          else 
            genre_object[g] = 1
          end
        end
        genre_object
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.artist_count
        artist_object = {}
        @@artists.each do |a|
            if artist_object[a]
                artist_object[a] +=1
            else
                artist_object[a] = 1
            end
        end
        artist_object
    end

end