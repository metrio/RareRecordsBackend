class RecordStoreSerializer < ActiveModel::Serializer
  attributes :id, :owner_id, :store_name, :address
end
