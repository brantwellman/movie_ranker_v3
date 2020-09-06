class Movie < ApplicationRecord
  SMALL_LOGO = "w45"
  MEDIUM_LOGO = "w154"
  BASE_URL = "http://image.tmdb.org/t/p/"

  def self.find_or_create(raw_movie)
    movie_attributes = to_attributes(raw_movie)

    Movie.where(tmdb_id: movie_attributes[:tmdb_id]).first_or_create do |movie|
      movie.imdb_id = movie_attributes[:imdb_id]
      movie.title = movie_attributes[:title]
      movie.poster_path = movie_attributes[:poster_path]
      movie.release_date = movie_attributes[:release_date]
    end
  end

  def self.to_attributes(movie)
    {
      tmdb_id: movie.id,
      imdb_id: movie.imdb_id,
      title: movie.title,
      poster_path: movie.poster_path,
      release_date: movie.release_date
    }
  end
end
