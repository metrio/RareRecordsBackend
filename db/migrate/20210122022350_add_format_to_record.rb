class AddFormatToRecord < ActiveRecord::Migration[6.0]
  def change
    add_column :records, :format, :string
    add_column :records, :catno, :string
    add_column :records, :label, :string
    add_column :records, :country, :string
    add_column :records, :official, :boolean
  end
end
