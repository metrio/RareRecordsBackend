class Owner < ApplicationRecord
   has_one :record_store

   has_secure_password
   
end
