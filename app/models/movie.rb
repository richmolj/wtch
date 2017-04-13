class Movie < ApplicationRecord
  has_many :watched_ats, as: :watchable
end
