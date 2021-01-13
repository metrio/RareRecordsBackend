class Record < ApplicationRecord
    has_many :wishlist
    has_many :user, through: :wishlists
    has_one :recordstore
    has_one :owner, through: :recordstore

end
