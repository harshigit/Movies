class Timing < ApplicationRecord
  belongs_to :movie, :foreign_key => 'movie_id'
end
