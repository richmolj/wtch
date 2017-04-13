class Episode < ApplicationRecord
  belongs_to :show
  has_many :watched_ats, as: :watchable
end
