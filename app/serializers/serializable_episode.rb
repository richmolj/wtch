class SerializableEpisode < JSONAPI::Serializable::Resource
  type :episodes

  attribute :name

  belongs_to :show
end
