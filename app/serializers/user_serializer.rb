class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :phone
end
