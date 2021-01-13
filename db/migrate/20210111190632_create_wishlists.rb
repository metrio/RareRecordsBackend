class CreateWishlists < ActiveRecord::Migration[6.0]
  def change
    create_table :wishlists do |t|
      t.integer :record_id
      t.integer :discogs_id
      t.integer :user_id
      t.text :notes

      t.timestamps
    end
  end
end
