class FixColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :recordstore_records, :recordstore_id, :record_store_id
  end
end
