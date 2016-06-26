class AddColumToCarsAvailable < ActiveRecord::Migration
  def change
    add_column :cars_availables, :rate_per_km, :float
  end
end
