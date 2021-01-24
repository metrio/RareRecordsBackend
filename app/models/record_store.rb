class RecordStore < ApplicationRecord
   belongs_to :owner
   has_many :recordstore_records
   has_many :records, through: :recordstore_records

end
