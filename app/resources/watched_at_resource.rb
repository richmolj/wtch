class WatchedAtResource < ApplicationResource
  type :watched_ats

  allow_filter :watchable_type

  polymorphic_belongs_to :watchable,
    group_by: proc { |watchable| watchable.watchable_type },
    groups: {
      'Episode' => {
        foreign_key: :watchable_id,
        resource: EpisodeResource,
        scope: -> { Episode.all }
      },
      'Movie' => {
        foreign_key: :watchable_id,
        resource: MovieResource,
        scope: -> { Movie.all }
      }
    }
end
