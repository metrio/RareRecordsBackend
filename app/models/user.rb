class User < ApplicationRecord
    has_many :wishlists, dependent: :destroy
    has_many :records, through: :wishlists
    
    
end
