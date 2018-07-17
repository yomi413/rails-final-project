class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :street_address 
      t.string :city
      t.string :state 
      t.string :zipcode
      t.string :address_type

      t.timestamps
    end
  end
end
