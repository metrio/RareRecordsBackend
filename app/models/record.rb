class Record < ApplicationRecord
    has_many :wishlist
    has_many :user, through: :wishlists
     
    has_many :recordstore_records
    has_many :record_stores, through: :recordstore_records

    validates :discogs_id, uniqueness: true, on: :create

end
