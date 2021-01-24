class FixPasswordName < ActiveRecord::Migration[6.0]
  def self.up
    rename_column :owners, :password, :password_digest
  end
end
