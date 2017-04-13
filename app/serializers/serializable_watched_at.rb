class SerializableWatchedAt < JSONAPI::Serializable::Resource
  type :watched_ats

  attribute :device

  belongs_to :watchable
end
