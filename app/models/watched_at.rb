class WatchedAt < ApplicationRecord
  belongs_to :watchable, polymorphic: true
end
