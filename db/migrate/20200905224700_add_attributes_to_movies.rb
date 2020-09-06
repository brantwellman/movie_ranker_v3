class AddAttributesToMovies < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :tmdb_id, :string
    add_column :movies, :imdb_id, :string
    add_column :movies, :release_date, :date
  end
end
