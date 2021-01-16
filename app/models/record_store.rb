class RecordStore < ApplicationRecord
   belongs_to :owner
   has_many :recordstorerecords
   has_many :records, through: :recorstorerecords

end
