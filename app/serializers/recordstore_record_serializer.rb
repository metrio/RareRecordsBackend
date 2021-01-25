class RecordstoreRecordSerializer < ActiveModel::Serializer
  attributes :id, :discogs_id, :record_id, :record_store_id
end
