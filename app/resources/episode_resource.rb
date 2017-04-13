class EpisodeResource < ApplicationResource
  type :episodes

  allow_filter :title

  belongs_to :show,
    foreign_key: :show_id,
    scope: -> { Show.all },
    resource: ShowResource
end
