class CreateParkingSpaces < ActiveRecord::Migration[5.2]
  def change
    create_table :parking_spaces do |t|

      t.timestamps
    end
  end
end
