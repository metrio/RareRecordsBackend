class OwnerSerializer < ActiveModel::Serializer
  attributes :id, :email, :phone, :username, :record_store
end
