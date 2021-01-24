class RecordStore < ApplicationRecord
   belongs_to :owner
   has_many :recordstore_records
   has_many :records, through: :recorstore_records

end
