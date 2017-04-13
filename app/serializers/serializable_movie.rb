class SerializableMovie < JSONAPI::Serializable::Resource
  type :movies

  attribute :name
end
