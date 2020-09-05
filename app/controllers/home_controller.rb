class HomeController < ApplicationController
  def index
  end

  def search
    search_params = params['search']
    results = Tmdb::Search.movie(search_params)
    @movies = results.results
  end
end
