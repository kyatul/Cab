class AddSeatsToCar < ActiveRecord::Migration
  def change
    add_column :cars, :seats, :integer
  end
end
