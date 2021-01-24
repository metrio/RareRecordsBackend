class RecordStoreSerializer < ActiveModel::Serializer
  attributes :id, :owner_id, :store_name, :address, :recordstore_records, :records
end
