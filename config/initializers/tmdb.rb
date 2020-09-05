# SMALL_LOGO = Tmdb::Configuration.get.images.logo_sizes.first
# BASE_URL = Tmdb::Configuration.get.images.base_url

Tmdb::Api.key(ENV['tmdb_key'])