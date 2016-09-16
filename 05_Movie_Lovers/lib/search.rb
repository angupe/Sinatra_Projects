class MovieSearcher

    def self.search(keyword)
        Imdb::Search.new(keyword).movies[0..8]
    end

    def self.answer(keyword)
        @store = Imdb::Search.new(keyword).movies[0..8]
        @answer = @store.map { |movie| movie.year }
    end

    def self.poster(keyword)
        @cover = Imdb::Search.new(keyword).movies[0..8]
        @poster = @store.map { |movie| movie.poster }
    end

end

