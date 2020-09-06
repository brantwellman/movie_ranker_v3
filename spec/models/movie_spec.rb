# == Schema Information
#
# Table name: movies
#
#  id           :integer          not null, primary key
#  poster_path  :string
#  release_date :date
#  title        :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  imdb_id      :string
#  tmdb_id      :string
#
require 'rails_helper'

RSpec.describe Movie, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
