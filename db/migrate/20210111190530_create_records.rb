class CreateRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :records do |t|
      t.string :album_name
      t.string :artist_name
      t.text :description
      t.string :thumb_url
      t.string :img_url
      t.integer :year_of_release
      t.boolean :in_store
      

      t.timestamps
    end
  end
end
