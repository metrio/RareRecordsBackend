class User < ApplicationRecord
    has_many :wishlists, dependent: :destroy
    has_many :records, through: :wishlists

    has_secure_password

    validates :username, uniqueness: { case_sensitive: false }
    
end
