class OwnerSerializer < ActiveModel::Serializer
  attributes :id, :email, :phone, :username, :record_stores
end
