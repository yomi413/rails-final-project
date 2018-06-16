class AddColumnToCarsTable < ActiveRecord::Migration[5.2]
  def change
    add_column :cars, :parking_space_id, :integer
  end
end
