class RecordStoreSerializer < ActiveModel::Serializer
  attributes :id, :owner_id, :store_name, :address, :records, :recordstore_records
end
