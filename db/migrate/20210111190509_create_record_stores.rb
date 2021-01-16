class CreateRecordStores < ActiveRecord::Migration[6.0]
  def change
    create_table :record_stores do |t|
      t.integer :owner_id
      t.text :store_name
      t.string :address

      t.timestamps
    end
  end
end
