class CreateOwners < ActiveRecord::Migration[6.0]
  def change
    create_table :owners do |t|
      t.string :username
      t.string :email
      t.string :phone
      t.string :password
      
      t.timestamps
    end
  end
end
