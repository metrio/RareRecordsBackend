class CreateRecordstoreRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :recordstore_records do |t|
        t.integer :recordstore_id
        t.integer :discogs_id
        t.integer :record_id        

      t.timestamps
    end
  end
end
