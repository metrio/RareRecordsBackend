class Record < ApplicationRecord
    has_many :wishlist
    has_many :user, through: :wishlists
    has_one :record_store

    validates :discogs_id, uniqueness: true, on: :create

end
