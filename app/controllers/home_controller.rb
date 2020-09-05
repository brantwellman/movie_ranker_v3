class HomeController < ApplicationController
  def index
  end

  def search
    search_params = params['search']
    results = Tmdb::Search.movie(search_params)
    @movies = results.results
    
    @base_url = Tmdb::Configuration.get.images.base_url
    @small_logo_size = Tmdb::Configuration.get.images.logo_sizes.first
  end
end
