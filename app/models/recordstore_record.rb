class RecordstoreRecord < ApplicationRecord
    belongs_to :recordstore
    belongs_to :owner, through: :recordstore
    belongs_to :record
end
