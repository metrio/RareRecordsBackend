class CreateRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :records do |t|
      t.string :album_name
      t.string :artist_name
      t.text :description
      t.integer :discogs_id
      t.string :thumb_url
      t.string :img_url
      t.boolean :in_store
      t.string :condition
      t.integer :year_of_release
      

      t.timestamps
    end
  end
end
