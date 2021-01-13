class WishlistSerializer < ActiveModel::Serializer
  attributes :id, :record_id, :user_id, :discogs_id
end
