class RecordstoreSerializer < ActiveModel::Serializer
  attributes :id, :record_id, :owner_id, :discogs_id, :copies
end
