class RecordstoreRecordSerializer < ActiveModel::Serializer
  attributes :id, :discogs_id, :record_id, :recordstore_id
end
