class OwnerSerializer < ActiveModel::Serializer
  attributes :id, :email, :phone, :username
end
