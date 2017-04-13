class SerializableShow < JSONAPI::Serializable::Resource
  type :shows

  attribute :name
end
