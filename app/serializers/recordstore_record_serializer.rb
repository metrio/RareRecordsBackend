class RecordstoreRecordSerializer < ActiveModel::Serializer
  attributes :id, :recordstore_id, :discogs_id, :record_id
end
