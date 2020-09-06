class MoviesController < ApplicationController
  before_action :authenticate_user!

  def create
    tmdb_id = params[:id]
    movie = Tmdb::Movie.detail(tmdb_id)

    @movie = Movie.find_or_create(movie)

    if @movie.save
      flash[:success] = "You added another movie to your collection"
      redirect_to movie_path(@movie)
    else
      flash[:error] = "Something went wrong. Please try again"
      redirect_to search_path
    end
  end

  def show
    @movie = Movie.find(params[:id])
  end
end
